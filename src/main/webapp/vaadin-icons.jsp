<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<%PortalUtil.setPageTitle("530+ free Polymer compatible icons | Vaadin Elements", request);%>

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
  <h1 class="helvetica-light">&lt;vaadin-icons&gt; <span><%=Releases.getLatestVersionNumber("vaadin-icons", "1.0.0-beta1")%></span></h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">
        Vaadin-icons contains 530 unique icons designed for web applications.
        Icon design is simple and favors sharp corners.
        Vaadin Icons are free to use from commercial apps to personal websites.
      </p>
    </div>
    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-icons</code>
      </div>
      <a href="https://vaadin.com/docs/-/part/elements/vaadin-icons/vaadin-icons-overview.html"
         class="w-button blue">Documentation</a>
      <a href="https://github.com/vaadin/vaadin-icons"
         class="w-button blue github">View on GitHub</a>
    </div>
  </div>
</div>


<!-- Intro section start -->



<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-section">
    <div class="icons-site-hero">
      <p>You can find full icon list and learn more about Vaadin Icons from</p>
      <a href="https://vaadin.com/icons" class="w-button icons-site-button">Vaadin Icons site</a>
    </div>
  </div>
</div>

<!-- Demo section start -->
<div class="elements-section">

  <h4>Examples</h4>

  <h5>Simple usage</h5>
  <demo-viewer >
    <demo-source name="Polymer" url="<%=request.getContextPath()%>/examples/core/icons/polymer.html"></demo-source>
    <demo-source name="Angular 2" url="<%=request.getContextPath()%>/examples/core/icons/angular2.ts"></demo-source>

    <style>
      .example {
        background: #fdfdfd;
        border: 1px solid rgba(0, 0, 0, 0.1);
        padding: .4em .8em;
      }
    </style>
    <div class="example">
      <p>
        <iron-icon icon="vaadin-icons:arrow-forward"></iron-icon>
        Vaadin icons can be used anywhere iron-icons can be used in Polymer apps.
      </p>
      <p>For instance, in
        <paper-button raised>
          <iron-icon icon="vaadin-icons:check"></iron-icon>
          Buttons
        </paper-button>
      </p>
    </div>
  </demo-viewer>
</div>

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>
  <jsp:include page="suggestion-box.jsp"/>
</div>

<jsp:include page="bottom-actions.jsp"/>
