<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/vaadin-charts/vaadin-column-chart.html">
<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-hero-title row-fluid">
    <div class="span9">
      <h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>

    <div class="span3 hidden-phone">
      <span class="polymer-tag">Built with Polymer</span>
    </div>
  </div>

  <h1 class="helvetica-light">&lt;vaadin-column-chart&gt;
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Display data with vertical bars proportional to values. Bars can be grouped and
        stacked.</p>
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
  <div class="span6">
    <ul>
      <li>
        <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-arearange-chart.jsp" /></portlet:renderURL>">Area
          range chart</a></li>
      <li>
        <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-area-chart.jsp" /></portlet:renderURL>">Area
          chart</a></li>
    </ul>
  </div>
  <div class="span6">
    <ul>
      <li>
        <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areasplinerange-chart.jsp" /></portlet:renderURL>">Area
          spline range chart</a></li>
      <li>
        <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-line-chart.jsp" /></portlet:renderURL>">Line
          Chart</a></li>
    </ul>
  </div>
</div>

<!-- Info section end -->

<!-- Demo section start -->
<div class="elements-section">
  <h4>Column chart with drilldown</h4>
  <view-source demo-name="Column chart with drilldown">
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-column-chart.html">
      -->
    </div>
    <vaadin-column-chart class="chart">
      <title>Browser market shares at a specific website, March 2015</title>
      <subtitle>Source: statcounter.com</subtitle>
      <x-axis type="category"></x-axis>
      <y-axis>
        <title>Total percent market share</title>
      </y-axis>
      <legend enabled="false"></legend>
      <plot-options>
        <series>
          <data-labels enabled="true" format="{point.y:.1f}%">
          </data-labels>
        </series>
      </plot-options>
      <data-series>
        <name>Vendors</name>
        <color-by-point>true</color-by-point>
        <data>
          <point>
            <name>Microsoft Internet Explorer</name>
            <y>56.33</y>
            <drilldown>Microsoft Internet Explorer</drilldown>
          </point>
          <point>
            <name>Chrome</name>
            <y>24.03</y>
            <drilldown>Chrome</drilldown>
          </point>
          <point>
            <name>Firefox</name>
            <y>10.38</y>
            <drilldown>Firefox</drilldown>
          </point>
          <point>
            <name>Safari</name>
            <y>4.77</y>
            <drilldown>Safari</drilldown>
          </point>
          <point>
            <name>Opera</name>
            <y>0.91</y>
            <drilldown>Opera</drilldown>
          </point>
          <point>
            <name>Proprietary or Undetectable</name>
            <y>0.2</y>
          </point>
        </data>
      </data-series>
      <data-series id="Microsoft Internet Explorer" drilldown="true">
        <name>Microsoft Internet Explorer</name>
        <data>
          [ "v11.0", 24.13 ], [ "v8.0", 17.2 ], [ "v9.0", 8.11 ], [ "v10.0", 5.33 ], [ "v6.0",
          1.06 ], [ "v7.0", 0.5 ]
        </data>
      </data-series>
      <data-series id="Chrome" drilldown="true">
        <name>Chrome</name>
        <data>
          [ "v40.0", 5 ], [ "v41.0", 4.32 ], [ "v42.0", 3.68 ], [ "v39.0", 2.96 ], [ "v36.0", 2.53
          ], [ "v43.0", 1.45 ], [ "v31.0", 1.24 ], [ "v35.0", 0.85 ], [ "v38.0", 0.6 ], [ "v32.0",
          0.55 ], [ "v37.0", 0.38 ], [ "v33.0", 0.19 ], [ "v34.0", 0.14 ], [ "v30.0",
          0.14 ]
        </data>
      </data-series>
      <data-series id="Firefox" drilldown="true">
        <name>Firefox</name>
        <data>
          [ "v35", 2.76 ], [ "v36", 2.32 ], [ "v37", 2.31 ], [ "v34", 1.27 ], [ "v38", 1.02 ], [
          "v31", 0.33 ], [ "v33", 0.22 ], [ "v32", 0.15 ]
        </data>
      </data-series>
      <data-series id="Safari" drilldown="true">
        <name>Safari</name>
        <data>
          [ "v8.0", 2.56 ], [ "v7.1", 0.77 ], [ "v5.1", 0.42 ], [ "v5.0", 0.3 ], [ "v6.1", 0.29 ],
          [ "v7.0", 0.26 ], [ "v6.2", 0.17 ]
        </data>
      </data-series>
      <data-series id="Opera" drilldown="true">
        <name>Opera</name>
        <data>
          [ "v12.x", 0.34 ], [ "v28", 0.24 ], [ "v27", 0.17 ], [ "v29", 0.16 ]
        </data>
      </data-series>
    </vaadin-column-chart>
  </view-source>

  <h4>Stacked column chart</h4>
  <view-source demo-name="Stacked column chart">
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-column-chart.html">
      -->
    </div>
    <vaadin-column-chart class="chart">
      <title>Total fruit consumption, grouped by gender</title>
      <x-axis>
        <categories>Apples, Oranges, Pears, Grapes, Bananas</categories>
      </x-axis>
      <y-axis allow-decimals="false" min="0">
        <title>Number of fruits</title>
      </y-axis>
      <tooltip point-format="{series.name}: {point.y}. Total: {point.stackTotal}"></tooltip>
      <plot-options>
        <column stacking="normal">
        </column>
      </plot-options>
      <data-series name="John">
        <stack>male</stack>
        <data>5, 3, 4, 7, 2</data>
      </data-series>
      <data-series name="Joe">
        <stack>male</stack>
        <data>3, 4, 4, 2, 5</data>
      </data-series>
      <data-series name="Jane">
        <stack>female</stack>
        <data>2, 5, 6, 2, 1</data>
      </data-series>
      <data-series name="Janet">
        <stack>female</stack>
        <data>3, 0, 4, 4, 3</data>
      </data-series>
    </vaadin-column-chart>
  </view-source>

  <h4>Column chart with negative values</h4>
  <view-source demo-name="Column chart with negative values">
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-column-chart.html">
      -->
    </div>
    <vaadin-column-chart class="chart">
      <title>Column chart with negative values</title>
      <subtitle>Source: WorldClimate.com</subtitle>
      <x-axis>
        <categories>Apples, Oranges, Pears, Grapes, Bananas</categories>
      </x-axis>
      <tooltip point-format="{series.name}: {point.y}"></tooltip>
      <plot-options>
        <column min-point-lenght="3">
        </column>
      </plot-options>
      <data-series name="John">
        <data> 5, 0.1, 4, 7, 2</data>
      </data-series>
      <data-series name="Jane">
        <data>2, -2, -0.1, 2, 1</data>
      </data-series>
      <data-series name="Joe">
        <data>3, 4, 4, -2, 5</data>
      </data-series>
    </vaadin-column-chart>
  </view-source>

  <h4>3D column chart</h4>
  <view-source demo-name="3D column chart">
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-column-chart.html">
      -->
    </div>
    <vaadin-column-chart class="chart">
      <title>Monthly Average Rainfall</title>
      <subtitle>Source: WorldClimate.com</subtitle>

      <x-axis>
        <categories>Jan, Feb, Mar, Apr</categories>
      </x-axis>

      <y-axis min="0">
        <title>Rainfall (mm)</title>
      </y-axis>

      <tooltip formatter="function() {return this.x +': ' + this.y + ' mm';}"></tooltip>

      <plot-options>
        <column point-padding="0.2" border-width="0" group-z-padding="10">
        </column>
      </plot-options>

      <chart>
        <options3d enabled="true" alpha="5" beta="30" depth="100" view-distance="200">
        </options3d>
      </chart>

      <data-series name="Tokyo">
        <data>49.9, 71.5, 106.4, 129.2</data>
      </data-series>
      <data-series name="New York">
        <data>83.6, 78.8, 98.5, 93.4</data>
      </data-series>
      <data-series name="London">
        <data>48.9, 38.8, 39.3, 41.4</data>
      </data-series>
      <data-series name="Berlin">
        <data>42.4, 33.2, 34.5, 39.7</data>
      </data-series>
    </vaadin-column-chart>
  </view-source>

  <h4>Wind rose chart</h4>
  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-column-chart.html">
      -->
    </div>
    <vaadin-column-chart id="windrose">
      <chart polar="true"></chart>
      <title>Wind rose for South Shore Met Station, Oregon</title>
      <subtitle>Source: or.water.usgs.gov</subtitle>
      <pane size="85%"></pane>
      <legend align="right" vertical-align="top" y="100" layout="vertical">
      </legend>
      <x-axis tickmark-placement="on">
        <categories>N,NNE,NE,ENE,E,ESE,SE,SSE,S,SSW,SW,WSW,W,WNW,NW,NNW</categories>
      </x-axis>
      <y-axis min="0" end-on-tick="false" show-last-label="true" reversed-stacks="false">
        <title>Frequency (%)</title>
        <labels formatter="function () {return this.value + '%';}"></labels>
      </y-axis>
      <tooltip value-suffix="%"></tooltip>
      <plot-options>
        <series stacking="normal" shadow="false" group-padding="0" point-placement="on"></series>
      </plot-options>
      <data-series name="< 0.5 m/s">
        <data>
          1.81, 0.62, 0.82, 0.59, 0.62, 1.22, 1.61, 2.04, 2.66, 2.96, 2.53, 1.97, 1.64, 1.32, 1.58, 1.51
        </data>
      </data-series>
      <data-series name="0.5-2 m/s">
        <data>
          1.78, 1.09, 0.82, 1.22, 2.20, 2.01, 3.06, 3.42, 4.74, 4.14, 4.01, 2.66, 1.71, 2.40, 4.28, 5.00
        </data>
      </data-series>
      <data-series name="2-4 m/s">
        <data>
          0.16, 0.00, 0.07, 0.07, 0.49, 1.55, 2.37, 1.97, 0.43, 0.26, 1.22, 1.97, 0.92, 0.99, 1.28, 1.32
        </data>
      </data-series>
      <data-series name="4-6 m/s">
        <data>
          0.00, 0.00, 0.00, 0.00, 0.00, 0.30, 2.14, 0.86, 0.00, 0.00, 0.49, 0.79, 1.45, 1.61, 0.76, 0.13
        </data>
      </data-series>
      <data-series name="6-8 m/s">
        <data>
          0.00, 0.00, 0.00, 0.00, 0.00, 0.13, 1.74, 0.53, 0.00, 0.00, 0.13, 0.30, 0.26, 0.33, 0.66, 0.23
        </data>
      </data-series>
      <data-series name="8-10 m/s">
        <data>
          0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.39, 0.49, 0.00, 0.00, 0.00, 0.00, 0.10, 0.00, 0.69, 0.13
        </data>
      </data-series>
      <data-series name="> 10 m/s">
        <data>
          0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.13, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.03, 0.07
        </data>
      </data-series>
    </vaadin-column-chart>
  </view-source>


</div>
<!-- Demo section end -->