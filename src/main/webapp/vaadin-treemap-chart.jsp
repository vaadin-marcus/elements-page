<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Tree Map Chart for Polymer, Angular 2, HTML5 | Vaadin Elements", request);%>

<!-- Imports -->
<jsp:include page="imports.jsp"/>

<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-hero-title row-fluid">
    <div class="span9">
      <h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>
    <div class="span3 hidden-phone">
      <a href="https://www.polymer-project.org"
         class="polymer-tag polymer-tag-white polymer-tag-inline">Based on Polymer</a>
    </div>
  </div>

  <h1 class="helvetica-light">&lt;vaadin-treemap-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Displays a set of hierarchical data in nested rectangles.</p>
    </div>

    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-charts</code>
      </div>
      <a href="https://vaadin.com/docs/-/part/charts/webcomponents-api/charts-getting-started.html"
         class="w-button blue">Documentation</a>
    </div>
  </div>
</div>

<!-- Intro section end -->

<!-- Info section start -->
<jsp:include page="charts-features.jsp"/>
<jsp:include page="get-help.jsp"/>
<!-- Info section end -->

<!-- Demo section start -->
<%request.setAttribute("chart", "vaadin-treemap-chart.html");%>

<template is="dom-bind">
  <div class="elements-section">

    <h4>Examples</h4>
    <chart-demo-viewer>
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/treemap/polymer.html"></demo-source>

      <vaadin-treemap-chart id="treemap-with-color-axis">
        <title>Vaadin Charts Treemap</title>
        <color-axis min-color="#FFFFFF" max-color="#7BB5EF"></color-axis>
        <data-series>
          <layout-algorithm>squarified</layout-algorithm>
          <data>
            <point>
              <name>A</name>
              <value>6</value>
              <color-value>1</color-value>
            </point>
            <point>
              <name>B</name>
              <value>6</value>
              <color-value>2</color-value>
            </point>
            <point>
              <name>C</name>
              <value>4</value>
              <color-value>3</color-value>
            </point>
            <point>
              <name>D</name>
              <value>3</value>
              <color-value>4</color-value>
            </point>
            <point>
              <name>E</name>
              <value>2</value>
              <color-value>5</color-value>
            </point>
            <point>
              <name>F</name>
              <value>2</value>
              <color-value>6</color-value>
            </point>
            <point>
              <name>G</name>
              <value>1</value>
              <color-value>7</color-value>
            </point>
          </data>
        </data-series>
      </vaadin-treemap-chart>
    </chart-demo-viewer>
  </div>
</template>

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="charts-links.jsp"/>

</div>

<jsp:include page="bottom-actions.jsp"/>
