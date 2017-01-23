<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Polygon Chart for Polymer, Angular 2, HTML5 | Vaadin Elements", request);%>


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

  <h1 class="helvetica-light">&lt;vaadin-polygon-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Highlights an area defined by data points making up a polygon.</p>
    </div>

    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-charts</code>
      </div>
      <a href="https://vaadin.com/docs/-/part/charts/webcomponents-api/charts-getting-started.html"
         class="w-button primary">Documentation</a>
    </div>
  </div>
</div>

<!-- Intro section end -->

<!-- Info section start -->
<jsp:include page="charts-features.jsp"/>
<jsp:include page="get-help.jsp"/>
<!-- Info section end -->

<!-- Demo section start -->
<%request.setAttribute("chart", "vaadin-polygon-chart.html");%>

<template is="dom-bind">
  <div class="elements-section">

    <h4>Examples</h4>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/polygon/polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/charts/polygon/angular2.ts"></demo-source>

      <vaadin-polygon-chart id="scatter-and-polygon">
        <title>Height vs Weight</title>
        <subtitle>Polygon series</subtitle>

        <x-axis grid-line-width="1" start-on-tick="true" end-on-tick="true" show-last-label="true">
          <title>Height (cm)</title>
        </x-axis>

        <y-axis>
          <title>Weight (kg)</title>
        </y-axis>
        <legend layout="vertical" align="right" vertical-align="middle">
        </legend>
        <tooltip header-format="<b>{series.name}</b><br>" point-format="{point.x} cm; {point.y} kg">
        </tooltip>
        <data-series name="Target">
          <data>[153, 42], [149, 46], [149, 55], [152, 60], [159, 70], [170, 77], [180, 70], [180,
            60], [173, 52], [166, 45]
          </data>
        </data-series>

      </vaadin-polygon-chart>
    </demo-viewer>
  </div>
</template>

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="charts-links.jsp"/>

</div>

<jsp:include page="bottom-actions.jsp"/>
