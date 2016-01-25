<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Error Bar Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-errorbar-chart&gt;
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Error bars can be used to indicate error or uncertainty in measurements.</p>
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
  <view-source head="#stuff-for-head">
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-errorbar-chart.html">
      -->
    </div>
    <vaadin-errorbar-chart id="error-bar">
      <title>Temperature vs Rainfall</title>
      <x-axis>
        <categories>Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec</categories>
      </x-axis>
      <y-axis>
        <labels format="{value} C">
          <style color="#EC6464"></style>
        </labels>
        <title text="Temperature">
          <style color="#EC6464"></style>
        </title>
      </y-axis>
      <y-axis opposite="true">
        <labels format="{value} mm">
          <style color="#3090F0"></style>
        </labels>
        <title text="Rainfall">
          <style color="#3090F0"></style>
        </title>
      </y-axis>
      <tooltip shared="true"></tooltip>
      <plot-options>
        <column>
          <tooltip point-format="<span style='font-weight: bold; color: {series.color}'>{series.name}</span>: <b>{point.y:.1f} mm</b>"></tooltip>
        </column>
        <errorbar>
          <tooltip point-format=" (error range: {point.low}-{point.high} mm)<br/>"></tooltip>
        </errorbar>
        <spline>
          <tooltip point-format="<span style='font-weight: bold; color: {series.color}'>{series.name}</span>: <b>{point.y:.1f}C</b>"></tooltip>
        </spline>
      </plot-options>
      <data-series name="Rainfall" type="column" y-axis="1">
        <data>
          49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4
        </data>
      </data-series>

      <data-series name="Rainfall error" y-axis="1">
        <data>
          [48, 51], [68, 73], [92, 110], [128, 136], [140, 150], [171, 179], [135, 143], [142, 149], [204, 220], [189, 199], [95, 110], [52, 56]
        </data>
      </data-series>

      <data-series name="Temperature" type="spline">
        <data>
          7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6
        </data>
      </data-series>
    </vaadin-errorbar-chart>
  </view-source>
</div>

<jsp:include page="charts-links.jsp"/>