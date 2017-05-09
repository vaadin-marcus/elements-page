<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<%PortalUtil.setPageTitle("Advanced dashboard web component for HTML and JS | Vaadin Elements", request);%>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<script src="<%=request.getContextPath()%>/bower_components/javascript-equal-height-responsive-rows/grids.min.js"></script>

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
      <h1>Vaadin Board</h1>
      <p class="lead helvetica-light">
        Vaadin Board is a powerful and easy to use layout element for building responsive views. It reorders your widgets on different screen sizes while maximising the use of available space. Combining Vaadin Board with Vaadin Charts allows you to build beautiful and functional dashboards and intro screens that can be used on any screens size.
      </p>
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-board</code>
      </div>
      <div class="releases">
        <%
          GitHubRelease latestStableRelease = Releases.getLatestStableRelease("vaadin-board");
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
          GitHubRelease latestPreRelase = Releases.getLatestPreRelease("vaadin-board");
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
      <a class="back-link" href="/elements">&laquo; Browse all components</a>
    </div>
    <div class="span5" style="position:relative">
      <img src="<%=request.getContextPath()%>/img/pro-elements/vaadin-board.png"
           class="element-image"
           alt="vaadin-board">
      <style media="screen">
        .pricing-button {
          margin-top: 28px;
        }
        @media (min-width: 768px) {
          .pricing-button {
            position: absolute;
            bottom: 1.5rem;
            width: 100%;
          }
        }
      </style>
      <a href="/pricing" class="button-on-blue pricing-button">See pricing</a>
    </div>
  </div>
</div>
<script>
  $('.elements-intro .span7, .elements-intro .span5').responsiveEqualHeightGrid();
</script>

<div class="w-wallpaper-container dark">
  <div class="w-wallpaper"></div>
  <div class="bottom-action-container">
    <h3 style="color: white; font-size: 1.6rem;">
      Limited time offer
    </h3>
    <p style="color: whitesmoke; font-size: 1.2rem; max-width: 40em; margin: 0 auto 1.7rem;">
      Have a feedback call with our dev team over Skype and receive a free license in exchange for your valuable time. Just ping us via <a href="mailto:protools@vaadin.com">protools@vaadin.com</a> when ready.
    </p>
  </div>
</div>

<!-- Demo section start -->
<a name="demo"></a>
<template is="dom-bind" id="dynamicDataTemplate">
  <div class="w-wallpaper-container zebra elements-dynamic-content">
     <div class="top-navigation">
       <iron-selector attr-for-selected="name" selected="{{selectedNavItem}}" id="top_nav_selector" on-iron-select="navigationChanged">
         <div name="features">Features</div>
         <div name="releases">Releases</div>
       </iron-selector>
       <a href="https://vaadin.com/docs" class="try-out-link" target="_blank">
         <div class="try-out">
           Documentation
           <svg fill="#555" height="12" viewBox="0 0 24 24" width="12" xmlns="http://www.w3.org/2000/svg">
             <path d="M0 0h24v24H0z" fill="none"/>
             <path d="M19 19H5V5h7V3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7zM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7z"/>
           </svg>
         </div>
       </a>
       <a href="https://demo.vaadin.com/vaadin-board" class="try-out-link" target="_blank">
         <div class="try-out">
           Live Demo
           <svg fill="#555" height="12" viewBox="0 0 24 24" width="12" xmlns="http://www.w3.org/2000/svg">
             <path d="M0 0h24v24H0z" fill="none"/>
             <path d="M19 19H5V5h7V3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7zM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7z"/>
           </svg>
         </div>
       </a>
       <a href="https://github.com/vaadin/vaadin-board" class="try-out-link" target="_blank">
         <div class="try-out">
           Github
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
           <div name="features">Features</div>
           <div name="releases">Releases</div>
         </iron-selector>
         <a href="https://vaadin.com/docs/-/part/board/board-overview.html" class="try-out-link" target="_blank">
           <div class="try-out">
             Documentation
             <svg fill="#555" height="12" viewBox="0 0 24 24" width="12" xmlns="http://www.w3.org/2000/svg">
               <path d="M0 0h24v24H0z" fill="none"/>
               <path d="M19 19H5V5h7V3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7zM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7z"/>
             </svg>
           </div>
         </a>
         <a href="https://demo.vaadin.com/vaadin-board" class="try-out-link" target="_blank">
           <div class="try-out">
             Live Demo
             <svg fill="#555" height="12" viewBox="0 0 24 24" width="12" xmlns="http://www.w3.org/2000/svg">
               <path d="M0 0h24v24H0z" fill="none"/>
               <path d="M19 19H5V5h7V3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7zM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7z"/>
             </svg>
           </div>
         </a>
         <a href="https://github.com/vaadin/vaadin-board" class="try-out-link" target="_blank">
           <div class="try-out">
             Github
             <svg fill="#555" height="12" viewBox="0 0 24 24" width="12" xmlns="http://www.w3.org/2000/svg">
               <path d="M0 0h24v24H0z" fill="none"/>
               <path d="M19 19H5V5h7V3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7zM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7z"/>
             </svg>
           </div>
         </a>
       </div>
       <div class="flexchild">
         <iron-pages attr-for-selected="data-nav" selected="{{selectedNavItem}}" fallback-selection="features">
           <div data-nav="features" class="features-list">
             <iframe src="<%=request.getContextPath()%>/examples/pro/board/build/default/index.html" frameborder="0" scrolling="no" class="element-demo-iframe" onload="setIframeResize()"></iframe>
           </div>
           <div data-nav="releases" class="releases-list">
             <%
               List releases = Releases.getLatestReleases("vaadin-board");
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
<!-- Demo section end -->

<script src="<%=request.getContextPath()%>/hash-nav.js?6"></script>
<jsp:include page="bottom-actions.jsp"/>
