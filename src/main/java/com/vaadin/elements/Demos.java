package com.vaadin.elements;

import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.gson.Gson;
import com.mashape.unirest.http.ObjectMapper;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

import java.util.*;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

// atm idea: tee joku iron-pages tohon ja tekis dom-if templatet noista eri sivuista. eli aina kun painaa eli "linkkiin" niin sitten näyttää sen linkin tuossa

public class Demos {

    private static LoadingCache<String, List<GitHubDemo>> cache;

    private static LoadingCache<String, List<GitHubDemo>> getCache() {
        if (cache == null) {
            init();
        }
        return cache;
    }

    private static void init() {
        cache = CacheBuilder
                .newBuilder()
                .expireAfterWrite(12, TimeUnit.HOURS)
                .build(new CacheLoader<String, List<GitHubDemo>>() {
                    @Override
                    public List<GitHubDemo> load(String repo) throws Exception {
                        return getGitHubDemos(repo);
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

    public static GitHubDemo getLatestDemo(String repo) {
        try {
            return getCache().get(repo).get(0);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<GitHubDemo> getLatestDemos(String repo) {
        try {
            return getCache().get(repo);
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    private static List<GitHubDemo> getGitHubDemos(String repository) throws UnirestException {
            List<GitHubDemo> demos = Arrays.asList(Unirest.get("https://api.github.com/repos/vaadin/{repo}/contents/demo")
                    .routeParam("repo", repository)
                    .header("Accept", "application/vnd.github.v3+json")
                    .header("User-Agent", "Vaadin")
                    .asObject(GitHubDemo[].class)
                    .getBody());
            /*try {
                Collections.sort(demos, new Comparator<GitHubDemo>() {
                    @Override
                    public int compare(GitHubDemo o1, GitHubDemo o2) {
                        String tag1 = o1.tagName;
                        String tag2 = o2.tagName;
                        Version v1 = Version.valueOf(tag1.startsWith("v") ? tag1.substring(1) : tag1);
                        Version v2 = Version.valueOf(tag2.startsWith("v") ? tag2.substring(1) : tag2);

                        return v2.compareTo(v1);
                    }
                });
            } catch (Exception e){
                System.out.println("Failed to sort github demos");
                e.printStackTrace();
            }*/

            return demos;

    }

}
