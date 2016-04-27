package com.vaadin.elements;


import java.util.Arrays;
import java.util.List;

public class PolymerElements {

    private static final List<PolymerElement> elements = Arrays.asList(
            new PolymerElement("paper-badge", "Material design status message for elements"),
            new PolymerElement("paper-button", "Material design button"),
            new PolymerElement("paper-card", "Material design piece of paper with unique related data"),
            new PolymerElement("paper-checkbox", "A material design checkbox"),
            new PolymerElement("paper-dialog", "A Material Design dialog"),
            new PolymerElement("paper-drawer-panel", "A responsive drawer panel"),
            new PolymerElement("paper-dropdown-menu", "An element that works similarly to a native browser select"),
            new PolymerElement("paper-fab", "A material design floating action button"),
            new PolymerElement("paper-header-panel", "A header and content wrapper for layout with headers"),
            new PolymerElement("paper-icon-button", "A material design icon button"),
            new PolymerElement("paper-input", "Material design text fields"),
            new PolymerElement("paper-item", "A material-design styled list item"),
            new PolymerElement("paper-listbox", "Implements an accessible material design listbox"),
            new PolymerElement("paper-material", "A material design container that looks like a lifted sheet of paper"),
            new PolymerElement("paper-menu", "Implements an accessible material design menu"),
            new PolymerElement("paper-menu-button", "A material design element that composes a trigger and a dropdown menu"),
            new PolymerElement("paper-progress", "A material design progress bar"),
            new PolymerElement("paper-radio-button", "A material design radio button"),
            new PolymerElement("paper-radio-group", "A group of material design radio buttons"),
            new PolymerElement("paper-ripple", "Adds a material design ripple to any container"),
            new PolymerElement("paper-scroll-header-panel", "A header bar with scrolling behavior"),
            new PolymerElement("paper-slider", "A material design-style slider"),
            new PolymerElement("paper-spinner", "A material design spinner"),
            new PolymerElement("paper-tabs", "Material design tabs"),
            new PolymerElement("paper-toast", "A material design notification toast"),
            new PolymerElement("paper-toggle-button", "A material design toggle button control"),
            new PolymerElement("paper-toolbar", "A material design toolbar that is easily customizable"),
            new PolymerElement("paper-tooltip", "Material design tooltip popup for content"),
            new PolymerElement("gold-cc-cvc-input", "Provides an input field for a credit card cvc number"),
            new PolymerElement("gold-cc-expiration-input", "A validating input for a credit card expiration date"),
            new PolymerElement("gold-cc-input", "A credit card input field"),
            new PolymerElement("gold-email-input", "An email input field"),
            new PolymerElement("gold-phone-input", "A validating input for a phone number"),
            new PolymerElement("gold-zip-input", "An input field for a zip code"),
            new PolymerElement("google-map", "Google Maps web components"),
            new PolymerElement("google-signin", "Web components to authenticate with Google services"),
            new PolymerElement("google-youtube", "YouTube video playback web component."),
            new PolymerElement("google-youtube-upload", "Upload videos to YouTube from your browser.")
    );

    public static List<PolymerElement> getAll() {
        return elements;
    }
}
