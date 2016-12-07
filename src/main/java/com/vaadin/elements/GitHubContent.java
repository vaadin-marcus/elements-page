package com.vaadin.elements;

import java.util.*;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

import com.github.zafarkhaja.semver.Version;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

public class GitHubContent {
	
	public static GitHubContent getDemoContent(String repo) {
		return (GitHubContent) Unirest.get("https://api.github.com/repos/vaadin/{repo}/contents/demo")
				.routeParam("repo", repo)
				.header("Accept", "application/vnd.github.v3+json")
				.header("User-Agent", "Vaadin")
				.getBody();
    }
    

}
