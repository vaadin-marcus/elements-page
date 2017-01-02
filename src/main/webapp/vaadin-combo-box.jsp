<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Material design combo box, filtering select for Polymer and Angular 2 | Vaadin Elements", request);%>

<!-- Imports -->

<jsp:include page="imports.jsp"/>


<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini vaadin-element-page-navigation">
  <div class="w-wallpaper"></div>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <h1>&lt;vaadin-combo-box&gt;</h1>
      <p class="lead helvetica-light">
        Vaadin ComboBox is a filterable select element for
        situations where you have more than a few dozen item to select from. It provides an optimal
        user experience for all your
        users regardless of if they are on desktop or mobile.
      </p>
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-combo-box</code>
      </div>
      <div class="releases">
        <%
          GitHubRelease latestStableRelease = Releases.getLatestStableRelease("vaadin-combo-box");
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
          GitHubRelease latestPreRelase = Releases.getLatestPreRelease("vaadin-combo-box");
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
    </div>
    <div class="span5">
     <p>add image here</p>
    </div>
  </div>
</div>


<!-- Intro section end -->



<!-- Demo section start -->
<a name="demo"></a>
<template is="dom-bind" id="dynamicDataTemplate">
  <div class="w-wallpaper-container zebra elements-dynamic-content">
     <div class="flex-container">
       <div class="navigation">
         <iron-selector attr-for-selected="name" selected="{{selectedNavItem}}" id="nav_selector">
           <div name="demo">Demo</div>
           <div name="docs">Documentation</div>
           <div name="releases">Releases</div>
         </iron-selector>
       </div>
       <div class="flexchild">
         <iron-pages attr-for-selected="data-nav" selected="{{selectedNavItem}}">
           <div data-nav="demo" id="demo_content" class="demos-list">
             <iframe src="http://localhost:8081/components/vaadin-combo-box/demo/" frameborder="0" scrolling="no" class="element-demo-iframe"></iframe>
           </div>
           <div data-nav="docs">
             <vaadin-component-page src="https://cdn.vaadin.com/vaadin-core-elements/master/vaadin-combo-box/doc-imports.html"></vaadin-component-page>
           </div>
           <div data-nav="releases" class="releases-list">
             <%
               List releases = Releases.getLatestReleases("vaadin-combo-box");
               for(int i=0; i < releases.size(); i++){
		  %>
		  <h1><a href="#" target="_blank" class="release-heading"><%= ((GitHubRelease)releases.get(i)).name %></a></h1>
		  <p class="release-authorship">
		    <img alt="@<%= ((GitHubRelease)releases.get(i)).author.login %>"
		        class="avatar"
		        height="20"
		        width="20"
		        src="<%= ((GitHubRelease)releases.get(i)).author.avatarUrl %>">
		    <a href="<%= ((GitHubRelease)releases.get(i)).author.htmlUrl %>" target="_blank">
		      <%= ((GitHubRelease)releases.get(i)).author.login %>
		    </a>
		    released this
		    <relative-time datetime="<%= ((GitHubRelease)releases.get(i)).publishedAt %>">
 					April 1, 2014
			</relative-time>
		  </p>
      	  <my-markdown markdown="<%=((GitHubRelease)releases.get(i)).body%>"></my-markdown>
		  <%
		    }
		  %>
           </div>
         </iron-pages>
       </div>
     </div>
  </div>
</template>
<script>
  document.querySelector('#dynamicDataTemplate').selectedNavItem = 'demo';
</script>
<!-- Demo section end -->



<jsp:include page="bottom-actions.jsp"/>
