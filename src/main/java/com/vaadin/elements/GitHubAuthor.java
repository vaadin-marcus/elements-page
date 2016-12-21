package com.vaadin.elements;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class GitHubAuthor {
	
	@SerializedName("login")
    @Expose
    public String login;

    @SerializedName("avatar_url")
    @Expose
    public String avatarUrl;

    @SerializedName("tag_name")
    @Expose
    public String tagName;

    @SerializedName("html_url")
    @Expose
    public String htmlUrl;
}
