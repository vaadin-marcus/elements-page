<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/vaadin-charts/vaadin-arearange-chart.html">
<link rel="import" href="<%=request.getContextPath()%>/bower_components/iron-ajax/iron-ajax.html">
<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-hero-title row-fluid">
    <div class="span9">
      <h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>

    <div class="span3">
      <span class="polymer-tag">Built with Polymer</span>
    </div>
  </div>

  <h1 class="helvetica-light">&lt;vaadin-areaspline-chart&gt;
    <span>1.0</span>
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span8">
      <p class="lead helvetica-light">Area spline chart is good for the following things for SEO
        reasons</p>
    </div>

    <div class="span4">
      <div class="elements-install">
        <h4>Install</h4>
        <code>bower install --save vaadin-charts</code>
      </div>
      <a class="w-arrow-button blue small" href="https://vaadin.com/docs/-/part/charts/webcomponents-api/charts-getting-started.html">Show documentation</a></div>
  </div>
</div>

<!-- Intro section start -->

<!-- Info section start -->
<div class="elements-section">
  <h4>Features</h4>

  <div class="row-fluid">
    <div class="span6">
      <ul>
        <li>Vector Graphics</li>
        <li>Dynamic data</li>
        <li>Multiple axes</li>
        <li>Zooming</li>
        <li>Branding</li>
        <li>Touch support</li>
      </ul>
    </div>

    <div class="span6">
      <h5>Similar charts</h5>
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
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-line-chart.jsp" /></portlet:renderURL>">Line
            Chart</a></li>
      </ul>
    </div>
  </div>
</div>

<!-- Info section end -->

<!-- Demo section start -->
<div class="elements-section">

  <h4>Demo</h4>
  <view-source head="#stuff-for-head">
    <vaadin-areaspline-chart id="area-spline">
      <title>Average fruit consumption during one week</title>

      <legend layout="vertical" align="left" vertical-align="top" x="150" y="100" floating="true">
      </legend>

      <x-axis>
        <categories>Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday</categories>
        <plot-bands from="4.5" to="6.5" color="rgba(68, 170, 213, .2)">
        </plot-bands>
      </x-axis>
      <y-axis>
        <title>Fruit units</title>
      </y-axis>

      <tooltip shared="true" value-suffix="units">
      </tooltip>
      <plot-options>
        <areaspline fill-opacity="0.5">
        </areaspline>
      </plot-options>

      <data-series name="John">
        <data>3, 4, 3, 5, 4, 10, 12</data>
      </data-series>
      <data-series name="Jane">
        <data>1, 3, 4, 3, 3, 5, 4</data>
      </data-series>
    </vaadin-areaspline-chart>

    <style>

    </style>

    <script>
    </script>
  </view-source>
</div>
<!-- Demo section end -->