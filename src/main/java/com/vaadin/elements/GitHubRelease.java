package com.vaadin.elements;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class GitHubRelease {

    @SerializedName("html_url")
    @Expose
    public String htmlUrl;

    @SerializedName("name")
    @Expose
    public String name;

    @SerializedName("tag_name")
    @Expose
    public String tagName;

    @SerializedName("published_at")
    @Expose
    public String publishedAt;
    
    @SerializedName("body")
    @Expose
    public String body;
    
    @SerializedName("author")
    @Expose
    public GitHubAuthor author;




}