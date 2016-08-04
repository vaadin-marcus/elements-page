<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Waterfall Chart for Polymer, Angular 2, HTML5 | Vaadin Elements", request);%>


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

  <h1 class="helvetica-light">&lt;vaadin-waterfall-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">A waterfall chart shows the cumulative effects of a step of sequentially applied positive
        or negative values.</p>
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
<%request.setAttribute("chart", "vaadin-waterfall-chart.html");%>

<template is="dom-bind">
  <div class="elements-section">
    <h4>Examples</h4>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/waterfall/polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/charts/waterfall/angular2.ts"></demo-source>

      <vaadin-waterfall-chart id="waterfall">
        <title>Vaadin Charts Waterfall</title>
        <x-axis type="category"></x-axis>
        <y-axis>
          <title>USD</title>
        </y-axis>
        <legend enabled="false"></legend>
        <tooltip point-format="<b>\${point.y:.2f}</b> USD"></tooltip>
        <plot-options>
          <series>
            <data-labels enabled="true" y="-30" vertical-align="top"
                         formatter="function () { return Highcharts.numberFormat(this.y / 1000, 0, ',') + 'k';}">
            </data-labels>
          </series>
        </plot-options>
        <data-series>
          <up-color>#EC6464</up-color>
          <color>#98DF58</color>
          <data>
            <point>
              <name>Start</name>
              <y>120000</y>
            </point>
            <point>
              <name>Product Revenue</name>
              <y>569000</y>
            </point>
            <point>
              <name>Service Revenue</name>
              <y>231000</y>
            </point>
            <point>
              <name>Positive Balance</name>
              <is-intermediate-sum>true</is-intermediate-sum>
              <color>#3090F0</color>
            </point>
            <point>
              <name>Fixed Costs</name>
              <y>-342000</y>
            </point>
            <point>
              <name>Variable Costs</name>
              <y>-233000</y>
            </point>
            <point>
              <name>Balance</name>
              <is-sum>true</is-sum>
              <color>#3090F0</color>
            </point>
          </data>
        </data-series>
      </vaadin-waterfall-chart>
    </demo-viewer>
  </div>
</template>

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="charts-links.jsp"/>
  <jsp:include page="suggestion-box.jsp"/>
</div>

<jsp:include page="bottom-actions.jsp"/>
