<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Area Spline Range Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-areasplinerange-chart&gt;
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">
        An area spline range chart highlights the area between two spline charts.
      </p>
    </div>

    <div class="span5">
      <div class="elements-install">
        <h4>Install</h4>
        <code>bower install --save vaadin-charts</code>
      </div>
      <a class="w-arrow-button blue small" href="https://vaadin.com/docs/-/part/charts/webcomponents-api/charts-getting-started.html">Show documentation</a></div>
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
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-arearange-chart.jsp" /></portlet:renderURL>">Area
            range chart</a></li>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-area-chart.jsp" /></portlet:renderURL>">Area
            chart</a></li>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areasplinerange-chart.jsp" /></portlet:renderURL>">Area
            spline range chart</a></li>
      </ul>
    </div>

    <div class="span6">
      <ul>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-line-chart.jsp" /></portlet:renderURL>">Line
            Chart</a></li>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-spline-chart.jsp" /></portlet:renderURL>">Spline
            Chart</a></li>
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
        <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-areasplinerange-chart.html">
        -->
      </div>
      <template is="dom-bind">
        <iron-ajax auto url="<%=request.getContextPath()%>/temp-variation.json" handle-as="json" last-response="{{temperatureData}}"></iron-ajax>
        <vaadin-areasplinerange-chart id="area-range">
          <chart zoom-type="x"></chart>
          <title>Temperature variation by day</title>
          <x-axis type="datetime"></x-axis>
          <y-axis>
            <title text="null"></title>
          </y-axis>
          <tooltip crosshairs="true" shared="true" value-suffix="C"></tooltip>
          <legend enabled="false"></legend>
          <data-series data="[[temperatureData]]"></data-series>
        </vaadin-areasplinerange-chart>
      </template>
    </view-source>
</div>
<!-- Demo section end -->
<jsp:include page="charts-links.jsp"/>