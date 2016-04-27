package com.vaadin.elements;

public class PolymerElement {

    private String name;
    private String description;

    PolymerElement(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getURL() {
        return "https://elements.polymer-project.org/elements/" + name + "?active=" + name + "&view=demo:demo/index.html";
    }
}
