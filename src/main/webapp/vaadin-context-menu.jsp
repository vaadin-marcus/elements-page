<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Context menu component for Polymer and Angular 2 | Vaadin Elements", request);%>

<!-- Imports -->

<jsp:include page="imports.jsp"/>


<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title row-fluid">
    <div class="span9"><h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>
    <div class="span3 hidden-phone">
      <a href="https://www.polymer-project.org"
         class="polymer-tag polymer-tag-white polymer-tag-inline">Based on Polymer</a>
    </div>
  </div>
  <h1 class="helvetica-light">&lt;vaadin-context-menu&gt;</h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">
        Component for showing a contextual menu for additional settings or options to the user.
        The menu can be attached to any element and you can configure which event to show it with.
      </p>
    </div>
    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-context-menu</code>
      </div>
      <div class="releases">
        <%
          GitHubRelease latestStableRelease = Releases.getLatestStableRelease("vaadin-context-menu");
          if (latestStableRelease != null) {
        %>
        <div class="release stable">
          <div class="release-type">Stable</div>
          <div class="version"><%=latestStableRelease.tagName%>
          </div>
          <a href="<%=latestStableRelease.htmlUrl%>" class="release-notes">Release notes</a>
        </div>
        <%}%>
        <%
          GitHubRelease latestPreRelase = Releases.getLatestPreRelease("vaadin-context-menu");
          if (latestPreRelase != null) {
        %>
        <div class="release pre">
          <div class="release-type">Pre-release</div>
          <div class="version"><%=latestPreRelase.tagName%>
          </div>
          <a href="<%=latestPreRelase.htmlUrl%>" class="">Release notes</a>
        </div>
        <%}%>
      </div>

      <a href="https://github.com/vaadin/vaadin-context-menu"
         class="w-button blue github">View on GitHub</a>
    </div>
  </div>
</div>


<!-- Intro section end -->

<!-- Info section start -->
<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-section">
    <h4>Features</h4>

    <div class="row-fluid">
      <div class="span6">
        <ul>
          <li>
            Right click or long press activation
          </li>
          <li>Customizable items</li>
        </ul>
      </div>
      <div class="span6">
        <ul>
          <li>
            Define which event you want to trigger the menu
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<jsp:include page="get-help.jsp"/>

<!-- Demo section start -->
<template is="dom-bind" id="demo-template">

  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">
      <h4>Examples</h4>

      <h5>Basic functionality</h5>
      In this example you can see how to use <code>paper-menu</code>, <code>paper-items</code> and
      <code>paper-item-body</code> elements to configure the content of the context menu.

      <demo-viewer selected="{{selected}}">
        <demo-source name="Polymer"
                     url="<%=request.getContextPath()%>/examples/core/context-menu/simple-polymer.html"></demo-source>

        <style>
          vaadin-context-menu {
            --vaadin-context-menu-overlay: {
              background: #fff;
            };
          }

          paper-menu {
            width: 100%;
          }

          #menuDemo {
            border: 1px solid #ddd;
            background: #eee;
            width: 300px;
            height: 50px;
            margin: 20px auto;
            padding: 20px;
          }

        </style>
        <vaadin-context-menu selector="#menuDemo">
          <template>
            <paper-menu>
              <paper-item>Item 1</paper-item>
              <paper-item>Item 2</paper-item>
              <paper-item>Item 3</paper-item>
              <paper-item>
                <iron-icon icon="warning"></iron-icon>
                <paper-item-body two-line>
                  <div>Item 4 - Line 1</div>
                  <div secondary>Item 4 - Line 2</div>
                </paper-item-body>
              </paper-item>
            </paper-menu>
          </template>
          <div id="menuDemo">
            Right click anywhere in this area to open the context menu.
          </div>
        </vaadin-context-menu>
      </demo-viewer>
    </div>
  </div>

</template>

<!-- Demo section end -->


<jsp:include page="bottom-actions.jsp"/>
