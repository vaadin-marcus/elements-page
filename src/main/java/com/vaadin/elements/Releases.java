package com.vaadin.elements;

import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.gson.Gson;
import com.mashape.unirest.http.ObjectMapper;
import com.mashape.unirest.http.Unirest;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class Releases {

    public static final int CACHE_MINUTES = 60;

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
                .expireAfterWrite(CACHE_MINUTES, TimeUnit.MINUTES)
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
            return Arrays.asList(Unirest.get("https://api.github.com/repos/vaadin/{repo}/releases")
                    .routeParam("repo", repository)
                    .header("Accept", "application/vnd.github.v3+json")
                    .header("User-Agent", "Vaadin")
                    .asObject(GitHubRelease[].class)
                    .getBody());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
