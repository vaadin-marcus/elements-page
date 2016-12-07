package com.vaadin.elements;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class GitHubDemo {

    @SerializedName("html_url")
    @Expose
    public String htmlUrl;

    @SerializedName("name")
    @Expose
    public String name;

}