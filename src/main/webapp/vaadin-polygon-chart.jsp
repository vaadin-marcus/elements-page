<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Polygon Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>


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
      <a href="https://www.polymer-project.org" class="polymer-tag">Built with Polymer</a>
    </div>
  </div>

  <h1 class="helvetica-light">&lt;vaadin-polygon-chart&gt;
  </h1>
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
      <div class="elements-install">
        <h4>Install</h4>
        <code>bower install --save vaadin-charts</code>
      </div>
      <a class="w-arrow-button blue small"
         href="https://vaadin.com/docs/-/part/charts/webcomponents-api/charts-getting-started.html">Show
        documentation</a></div>
  </div>
</div>

<!-- Intro section start -->

<!-- Info section start -->
<jsp:include page="charts-features.jsp"/>

<!-- Info section end -->

<!-- Demo section start -->
<div class="elements-section">


  <h4>Examples</h4>
  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-polygon-chart.html">
      -->
    </div>
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
  </view-source>
</div>

<jsp:include page="charts-links.jsp"/>