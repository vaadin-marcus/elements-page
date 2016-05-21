package com.vaadin.elements;

import com.github.zafarkhaja.semver.Version;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.gson.Gson;
import com.mashape.unirest.http.ObjectMapper;
import com.mashape.unirest.http.Unirest;

import java.util.*;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

public class Releases {

    private static LoadingCache<String, List<GitHubRelease>> cache;

    private static LoadingCache<String, List<GitHubRelease>> getCache() {
        if (cache == null) {
            init();
        }
        return cache;
    }

    private static void init() {
        cache = CacheBuilder
                .newBuilder()
                .expireAfterWrite(12, TimeUnit.HOURS)
                .build(new CacheLoader<String, List<GitHubRelease>>() {
                    @Override
                    public List<GitHubRelease> load(String repo) throws Exception {
                        return getGitHubReleases(repo);
                    }
                });

        Unirest.setObjectMapper(new ObjectMapper() {
            Gson gson = new Gson();

            @Override
            public <T> T readValue(String json, Class<T> aClass) {
                return gson.fromJson(json, aClass);
            }

            @Override
            public String writeValue(Object o) {
                return gson.toJson(o);
            }
        });
    }


    public static String getLatestVersionNumber(String repo, String fallback) {
        GitHubRelease latestRelease = getLatestRelease(repo);
        return latestRelease == null || latestRelease.tagName == null ? fallback : latestRelease.tagName;
    }

    public static GitHubRelease getLatestStableRelease(String repo) {
        try {
            List<GitHubRelease> releases = getCache().get(repo);
            if (releases != null) {
                for (GitHubRelease release : releases) {
                    String tag = release.tagName.startsWith("v") ? release.tagName.substring(1) : release.tagName;

                    if (Version.valueOf(tag).getPreReleaseVersion().isEmpty()) {
                        return release;
                    }
                }
            }
            return null;
        } catch (ExecutionException e) {
            return null;
        }
    }

    public static GitHubRelease getLatestPreRelease(String repo) {
        try {
            List<GitHubRelease> releases = getCache().get(repo);
            if(releases != null && !releases.isEmpty()) {
                GitHubRelease release = releases.get(0);
                String tag = release.tagName.startsWith("v") ? release.tagName.substring(1) : release.tagName;
                if (!Version.valueOf(tag).getPreReleaseVersion().isEmpty()) {
                    return release;
                }
            }
            return null;
        } catch (ExecutionException e) {
            return null;
        }
    }

    private static GitHubRelease getLatestRelease(String repo) {
        try {
            return getCache().get(repo).get(0);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<GitHubRelease> getLatestReleases(String repo) {
        try {
            return getCache().get(repo);
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    private static List<GitHubRelease> getGitHubReleases(String repository) {
        try {
            List<GitHubRelease> releases = Arrays.asList(Unirest.get("https://api.github.com/repos/vaadin/{repo}/releases")
                    .routeParam("repo", repository)
                    .header("Accept", "application/vnd.github.v3+json")
                    .header("User-Agent", "Vaadin")
                    .asObject(GitHubRelease[].class)
                    .getBody());
            try {
                Collections.sort(releases, new Comparator<GitHubRelease>() {
                    @Override
                    public int compare(GitHubRelease o1, GitHubRelease o2) {
                        String tag1 = o1.tagName;
                        String tag2 = o2.tagName;
                        Version v1 = Version.valueOf(tag1.startsWith("v") ? tag1.substring(1) : tag1);
                        Version v2 = Version.valueOf(tag2.startsWith("v") ? tag2.substring(1) : tag2);

                        return v2.compareTo(v1);
                    }
                });
            } catch (Exception e){
                System.out.println("Failed to sort github releases");
                e.printStackTrace();
            }

            return releases;
        } catch (Exception e) {
            System.err.println("Failed to fetch releases for " + repository);
            e.printStackTrace();
            return null;
        }
    }

}
