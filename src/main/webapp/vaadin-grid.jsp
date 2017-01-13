<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Advanced data grid / data table web component | Vaadin Elements", request);%>

<!-- Imports -->
<jsp:include page="imports.jsp"/>

<!-- Imports end -->

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
      <h1>&lt;vaadin-grid&gt;</h1>
      <p class="lead helvetica-light">
        Vaadin Grid is a fully featured datagrid for showing table
        data. It performs great even with huge data sets, fully supporting paging and lazy loading
        from any data source like a REST API. Grid allows you sort and filter data and customize how
        each cell gets rendered.
      </p>
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-grid</code>
      </div>
      <div class="releases">
        <%
          GitHubRelease latestStableRelease = Releases.getLatestStableRelease("vaadin-grid");
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
          GitHubRelease latestPreRelase = Releases.getLatestPreRelease("vaadin-grid");
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
     <img src="<%=request.getContextPath()%>/img/core-elements/vaadin-grid.png"
     	  class="element-image"
          alt="vaadin-grid">
    </div>
  </div>
</div>

<!-- Intro section end -->

<!-- Demo section start -->
<a name="demo"></a>
<template is="dom-bind" id="dynamicDataTemplate">
  <div class="w-wallpaper-container zebra elements-dynamic-content">
     <div class="top-navigation">
       <iron-selector attr-for-selected="name" selected="{{selectedNavItem}}" id="top_nav_selector" on-iron-select="navigationChanged">
         <div name="demo">Demo</div>
         <div name="docs">Documentation</div>
         <div name="releases">Releases</div>
       </iron-selector>
       <a href="https://github.com/vaadin/vaadin-grid" class="try-out-link" target="_blank">
         <div class="try-out">
           Github
           <svg fill="#555" height="12" viewBox="0 0 24 24" width="12" xmlns="http://www.w3.org/2000/svg">
             <path d="M0 0h24v24H0z" fill="none"/>
             <path d="M19 19H5V5h7V3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7zM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7z"/>
           </svg>
         </div>
       </a>
       <a href="https://jsbin.com/yokewut/1/edit?html,output" class="try-out-link" target="_blank">
         <div class="try-out">
           Try it out
           <svg fill="#555" height="12" viewBox="0 0 24 24" width="12" xmlns="http://www.w3.org/2000/svg">
             <path d="M0 0h24v24H0z" fill="none"/>
	         <path d="M19 19H5V5h7V3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7zM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7z"/>
	       </svg>
         </div>
       </a>
     </div>
     <div class="flex-container dynamic-list-top">
       <div class="navigation">
         <iron-selector attr-for-selected="name" selected="{{selectedNavItem}}" id="nav_selector" on-iron-select="navigationChanged">
           <div name="demo">Demo</div>
           <div name="docs">Documentation</div>
           <div name="releases">Releases</div>
         </iron-selector>
         
         <a href="https://jsbin.com/yokewut/1/edit?html,output" class="try-out-link" target="_blank">
           <div class="try-out">
	         Try it out
	         <svg fill="#555" height="12" viewBox="0 0 24 24" width="12" xmlns="http://www.w3.org/2000/svg">
	           <path d="M0 0h24v24H0z" fill="none"/>
	           <path d="M19 19H5V5h7V3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7zM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7z"/>
	         </svg>
           </div>
         </a>
       </div>
       <div class="flexchild">
         <iron-pages attr-for-selected="data-nav" selected="{{selectedNavItem}}">
           <div data-nav="demo" id="demo_content" class="demos-list">
             <iframe src="https://cdn.vaadin.com/vaadin-core-elements/master/vaadin-grid/demo/" frameborder="0" scrolling="no" class="element-demo-iframe"></iframe>
           </div>
           <div data-nav="docs">
             <vaadin-component-page src="https://cdn.vaadin.com/vaadin-core-elements/master/vaadin-grid/vaadin-grid-doc.html"></vaadin-component-page>
           </div>
           <div data-nav="releases" class="releases-list">
             <%
               List releases = Releases.getLatestReleases("vaadin-grid");
               for(int i=0; i < releases.size(); i++){
                 GitHubRelease release = (GitHubRelease) releases.get(i);
		  %>
		  <h1><a href="<%=release.htmlUrl%>" target="_blank" class="release-heading"><%= release.name %></a></h1>
		  <p class="release-authorship">
		    <img alt="@<%= release.author.login %>"
		        class="avatar"
		        height="20"
		        width="20"
		        src="<%= release.author.avatarUrl %>">
		    <a href="<%= release.author.htmlUrl %>" target="_blank">
		      <%= release.author.login %>
		    </a>
		    released this
		    <local-time-element time="<%= release.publishedAt %>">
 			  <%= release.publishedAt %>
			</local-time-element>
		  </p>
		  <marked-element markdown="<%= release.getBodyEscapedAsAttribute() %>">
		    <div class="markdown-html"></div>
          </marked-element>
		  <%
		    }
		  %>
           </div>
         </iron-pages>
       </div>
     </div>
  </div>
</template>
<script src="<%=request.getContextPath()%>/dynamic-content-changer.js"></script>
<!-- Demo section end -->

<jsp:include page="bottom-actions.jsp"/>
