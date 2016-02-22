<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Waterfall Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>


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

  <h1 class="helvetica-light">&lt;vaadin-waterfall-chart&gt;
  </h1>
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
      <%request.setAttribute("chart", "vaadin-waterfall-chart.html");%>
      <jsp:include page="charts-imports.jsp"/>
      -->
    </div>
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
  </view-source>
</div>

<jsp:include page="charts-links.jsp"/>
<jsp:include page="suggestion-box.jsp"/>