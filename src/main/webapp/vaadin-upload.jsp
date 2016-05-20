<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<%PortalUtil.setPageTitle("Material design Upload component for Polymer and Angular 2 | Vaadin Elements", request);%>

<!-- Imports -->
<jsp:include page="imports.jsp"/>

<!-- Imports end -->


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
  <h1 class="helvetica-light">&lt;vaadin-upload&gt;</h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Vaadin upload allows you to upload multiple files with
        progress indication. Supports drag and drop and manual file selection.</p>
    </div>
    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-upload</code>
      </div>
      <div class="releases">
        <%
          GitHubRelease latestStableRelease = Releases.getLatestStableRelease("vaadin-upload");
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
          GitHubRelease latestPreRelase = Releases.getLatestPreRelease("vaadin-upload");
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
      <a href="https://vaadin.com/docs/-/part/elements/vaadin-upload/vaadin-upload-overview.html"
         class="w-button blue">Documentation</a>
      <a href="https://github.com/vaadin/vaadin-upload"
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
          <li>Multiple file upload</li>
          <li>Drag and drop support</li>
          <li>Upload process indication</li>
        </ul>
      </div>
      <div class="span6">
        <ul>
          <li>Fully customizable upload request</li>
          <li>
            Material Design inspired styles to fit in with <a
              href="https://elements.polymer-project.org/browse?package=paper-elements">Paper
            Elements</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Info section end -->

<% List<GitHubRelease> latestReleases = Releases.getLatestReleases("vaadin-upload");
  if (latestReleases != null && !latestReleases.isEmpty()) {
%>
<div class="elements-section">
  <h4>Latest releases</h4>
  <%--A small part of me died for writing this--%>
  <% for (GitHubRelease release : latestReleases) {%>
  <div class="row-fluid">
    <span class="span9"><a href="<%=release.htmlUrl%>"><%=release.name%>
    </a></span>
    <time is="relative-time" datetime="<%=release.publishedAt%>" class="span3"></time>
  </div>
  <%}%>
</div>
<%}%>

<!-- Demo section start -->
<template is="dom-bind">
  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">

      <script>
        // Use MockHttpRequest in demos
        function mockXhrGenerator(file) {
          var xhr = new MockHttpRequest();
          xhr.upload = {};
          xhr.onsend = function() {
            var total = file && file.size || 1024, done = 0;

            function start() {
              setTimeout(progress, 1000);
            }

            function progress() {
              xhr.upload.onprogress({total: total, loaded: done});
              if (done < total) {
                setTimeout(progress, 200);
                done = Math.min(total, done + 254000);
              } else {
                setTimeout(finish, 1000);
              }
            }

            function finish() {
              xhr.receive(200, '{"message":"OK"}');
            }

            start();
          };
          return xhr;
        }
        window.addEventListener('WebComponentsReady', function() {
          // Monkey-patch vaadin-upload prototype to use MockHttpRequest
          Object.getPrototypeOf(document.createElement('vaadin-upload'))._createXhr = mockXhrGenerator;
        });
      </script>

      <h4>Examples</h4>

      <h5>Simple usage</h5>
      <demo-viewer selected="{{selected}}">
        <demo-source name="Polymer"
                     url="<%=request.getContextPath()%>/examples/core/upload/simple-polymer.html"></demo-source>
        <demo-source name="Angular 2"
                     url="<%=request.getContextPath()%>/examples/core/upload/simple-angular2.ts"></demo-source>

        <vaadin-upload></vaadin-upload>
      </demo-viewer>
    </div>

  </div>

  <div class="elements-section">
    <h5>File type, count and size limits</h5>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/core/upload/advanced-polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/core/upload/advanced-angular2.ts"></demo-source>

      <vaadin-upload max-files="3" accept="application/pdf" max-file-size="1000000">
        <div class="drop-label">
          <iron-icon icon="file-upload"></iron-icon>
          Accepts up to 3 PDF files, up to 1MB each
        </div>
      </vaadin-upload>
    </demo-viewer>

    <div class="links row-fluid" style="margin-top: 20px;">
      <a class="w-arrow-button blue span6"
         href="https://cdn.vaadin.com/vaadin-elements/master/vaadin-upload/demo/">More Vaadin Upload
        demos</a>
    </div>

  </div>
</template>
<!-- Demo section end -->

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="suggestion-box.jsp"/>
</div>

<jsp:include page="bottom-actions.jsp"/>
