<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Solid Gauge Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-solidgauge-chart&gt;
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">A solid gauge chart shows a value as a colored angle of an arc.</p>
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
<div class="elements-section">
  <h4>Similar charts</h4>

  <div class="row-fluid">
    <div class="span6">
      <ul>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-gauge-chart.jsp" /></portlet:renderURL>">Gauge chart</a></li>
      </ul>
    </div>

  </div>
</div>

<!-- Info section end -->

<!-- Demo section start -->
<div class="elements-section">
  <h4>Examples</h4>
  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-elements/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-solidgauge-chart.html">
      -->
    </div>
    <vaadin-solidgauge-chart id="solid-gauge">
      <title text=""></title>
      <pane start-angle="-90" end-angle="90">
        <background background-color="#EEE" inner-radius="60%" outer-radius="100%"
                    shape="arc"></background>
      </pane>
      <tooltip enabled="false"></tooltip>
      <y-axis min="0" max="200" line-width="0" minor-tick-width="0" tick-width="0">
        <stops>0.1, #55BF3B</stops>
        <stops>0.5, #DDDF0D</stops>
        <stops>0.9, #DF5353</stops>
        <title y="-100">Speed</title>
        <labels enabled="false"></labels>
      </y-axis>
      <plot-options>
        <solidgauge>
          <data-labels y="5" border-width="0"></data-labels>
        </solidgauge>
      </plot-options>
      <data-series name="Speed">
        <data>80</data>
      </data-series>
    </vaadin-solidgauge-chart>
  </view-source>
</div>


<jsp:include page="charts-links.jsp"/>