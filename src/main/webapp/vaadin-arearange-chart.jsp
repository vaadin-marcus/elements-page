<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Area Range Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>
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

  <h1 class="helvetica-light">&lt;vaadin-arearange-chart&gt;
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">
        An area range chart highlights the area between two line charts.
      </p>
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
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areaspline-chart.jsp" /></portlet:renderURL>">Area
            spline chart</a></li>
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
  <view-source externals="<%=request.getContextPath()%>/temp-variation.json">
    <div class="head">
      <!--
       <%request.setAttribute("chart", "vaadin-arearange-chart.html");%>
      <jsp:include page="charts-imports.jsp"/>
      -->
    </div>
    <template is="dom-bind">
      <iron-ajax auto url="<%=request.getContextPath()%>/temp-variation.json" handle-as="json"
                 last-response="{{temperatureData}}"></iron-ajax>
      <vaadin-arearange-chart id="area-range">
        <chart zoom-type="x"></chart>
        <title>Temperature variation by day</title>
        <x-axis type="datetime"></x-axis>
        <y-axis>
          <title text="null"></title>
        </y-axis>
        <tooltip crosshairs="true" shared="true" value-suffix="C"></tooltip>
        <legend enabled="false"></legend>
        <data-series data="[[temperatureData]]"></data-series>
      </vaadin-arearange-chart>
    </template>
  </view-source>
</div>

<jsp:include page="charts-links.jsp"/>