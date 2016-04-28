<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<%PortalUtil.setPageTitle("Area Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>

<jsp:include page="imports.jsp"/>


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

  <h1 class="helvetica-light">&lt;vaadin-area-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">
        Area chart highlights the area between a line chart and the axis. Areas can be on top of each other or stacked.
      </p>
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

<div class="elements-section">
  <h4>Similar charts</h4>

  <div class="row-fluid">
    <div class="span6">
      <ul>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areaspline-chart.jsp" /></portlet:renderURL>">Area
            spline chart</a></li>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-arearange-chart.jsp" /></portlet:renderURL>">Area
            range chart</a></li>
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

<%request.setAttribute("chart", "vaadin-area-chart.html");%>
<template is="dom-bind">
  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">
      <h4>Examples</h4>
      <h5>Basic area chart</h5>
      <demo-viewer selected="{{selected}}">
        <demo-source name="Polymer"
                     url="<%=request.getContextPath()%>/examples/charts/area/basic-polymer.html"></demo-source>
        <demo-source name="Angular 2"
                     url="<%=request.getContextPath()%>/examples/charts/area/basic-angular2.ts"></demo-source>

        <vaadin-area-chart id="basic-area">
          <title>US and USSR nuclear stockpiles</title>
          <subtitle>Source: thebulletin.metapress.com</subtitle>
          <x-axis allow-decimals="false">
            <labels formatter="function () { return this.value; }"></labels>
          </x-axis>
          <y-axis min="0">
            <title>Nuclear weapon states</title>
            <labels formatter="function () { return this.value / 1000 + 'k'; }"></labels>
          </y-axis>
          <tooltip
              point-format="{series.name} produced <b>{point.y}</b><br/>warheads in {point.x}"></tooltip>
          <plot-options>
            <area-chart point-start="1940">
              <marker enabled="false" symbol="circle" radius="2">
                <states>
                  <hover enabled="true"></hover>
                </states>
              </marker>
            </area-chart>
          </plot-options>
          <data-series name="USA">
            <data>null, null, null, null, null, 6, 11, 32, 110, 235, 369, 640, 1005, 1436, 2063,
              3057, 4618, 6444, 9822, 15468, 20434, 24126, 27387, 29459, 31056, 31982, 32040,
              31233, 29224, 27342, 26662, 26956, 27912, 28999, 28965, 27826, 25579, 25722,
              24826,
              24605, 24304, 23464, 23708, 24099, 24357, 24237, 24401, 24344, 23586, 22380,
              21004, 17287, 14747, 13076, 12555, 12144, 11009, 10950, 10871, 10824, 10577,
              10527, 10475, 10421, 10358, 10295, 10104
            </data>
          </data-series>
          <data-series name="USSR/Russia">
            <data>null, null, null, null, null, null, null, null, null, null, 5, 25, 50, 120,
              150, 200, 426, 660, 869, 1060, 1605, 2471, 3322, 4238, 5221, 6129, 7089, 8339,
              9399, 10538, 11643, 13092, 14478, 15915, 17385, 19055, 21205, 23044, 25393,
              27935, 30062,
              32049, 33952, 35804, 37431, 39197, 45000, 43000, 41000, 39000, 37000, 35000,
              33000, 31000, 29000, 27000, 25000, 24000, 23000, 22000, 21000, 20000, 19000,
              18000, 18000, 17000, 16000
            </data>
          </data-series>
        </vaadin-area-chart>
      </demo-viewer>
    </div>
  </div>

  <div class="elements-section">
    <h5>Area chart with negative values</h5>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/area/negative-values-polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/charts/area/negative-values-angular2.ts"></demo-source>

      <vaadin-area-chart id="area-with-negative-values">
        <title>Area chart with negative values</title>

        <x-axis>
          <categories>Apples, Oranges, Pears, Grapes, Bananas</categories>
        </x-axis>

        <tooltip enabled="true" shared="true">
        </tooltip>

        <data-series name="John">
          <data>5, 3, 4, 7, 2</data>
        </data-series>
        <data-series name="Jane">
          <data>2, -2, -3, 2, 1</data>
        </data-series>
        <data-series name="Joe">
          <data>3, 4, 4, -2, 5</data>
        </data-series>
      </vaadin-area-chart>
    </demo-viewer>
  </div>

  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">
      <h5>Area chart with missing points</h5>
      <demo-viewer selected="{{selected}}">
        <demo-source name="Polymer"
                     url="<%=request.getContextPath()%>/examples/charts/area/missing-points-polymer.html"></demo-source>
        <demo-source name="Angular 2"
                     url="<%=request.getContextPath()%>/examples/charts/area/missing-points-angular2.ts"></demo-source>

        <vaadin-area-chart id="area-with-missing-points">
          <title>Fruit consumption *</title>
          <subtitle floating="true" y="10" align="right" vertical-align="bottom">* Jane's banana
            consumption is unknown
          </subtitle>
          <x-axis>
            <categories>Apples, Pears, Oranges, Bananas, Grapes, Plums, Strawberries,
              Raspberries
            </categories>
          </x-axis>
          <legend layout="vertical" align="left" floating="true" vertical-align="top" x="150"
                  y="100" border-width="1" background-color="#ffffff"></legend>
          <tooltip enabled="true" shared="true">
          </tooltip>
          <data-series name="John">
            <data>0, 1, 4, 4, 5, 2, 3, 7</data>
          </data-series>
          <data-series name="Jane">
            <data>1, 0, 3, null, 3, 1, 2, 1</data>
          </data-series>
        </vaadin-area-chart>
      </demo-viewer>
    </div>
  </div>

  <div class="elements-section">
    <h5>Area chart with inverted axis</h5>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/area/inverted-axis-polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/charts/area/inverted-axis-angular2.ts"></demo-source>

      <vaadin-area-chart id="inverted-axes">
        <chart inverted="true"></chart>
        <title>Average fruit consumption during one week</title>
        <legend layout="vertical" align="right" vertical-align="top" x="-150" y="100"
                floating="true">
        </legend>
        <x-axis>
          <categories>Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
          </categories>
        </x-axis>
        <y-axis min="0">
          <title>Number of units</title>
          <labels formatter="function () { return this.value; }"></labels>
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
      </vaadin-area-chart>
    </demo-viewer>
  </div>

  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">
      <h5>Percentage area chart</h5>
      <demo-viewer selected="{{selected}}">
        <demo-source name="Polymer"
                     url="<%=request.getContextPath()%>/examples/charts/area/percentage-area-polymer.html"></demo-source>
        <demo-source name="Angular 2"
                     url="<%=request.getContextPath()%>/examples/charts/area/percentage-area-angular2.ts"></demo-source>

        <vaadin-area-chart id="percentage-area">
          <title>Historic World Population by Region</title>
          <subtitle>Source: Wikipedia.org</subtitle>
          <x-axis tickmark-placement="on">
            <categories>1750, 1800, 1850, 1900, 1950, 1999, 2050</categories>
            <title enabled="false"></title>
          </x-axis>
          <y-axis min="0">
            <title>Percent</title>
          </y-axis>
          <tooltip shared="true"
                   point-format='<span style="color:{series.color}">{series.name}</span>: <b>{point.percentage:.1f}%</b> ({point.y:.0f} millions)<br/>'></tooltip>
          <plot-options>
            <series stacking="percent" line-width="1">
            </series>
          </plot-options>
          <legend layout="vertical" align="right" vertical-align="top" x="-40" y="80"
                  floating="true" border-width="1" background-color="#FFFFFF"
                  shadow="true"></legend>
          <data-series name="Asia">
            <data>502, 635, 809, 947, 1402, 3634, 5268</data>
          </data-series>
          <data-series name="Africa">
            <data>106, 107, 111, 133, 221, 767, 1766</data>
          </data-series>
          <data-series name="Europe">
            <data>163, 203, 276, 408, 547, 729, 628</data>
          </data-series>
          <data-series name="America">
            <data>18, 31, 54, 156, 339, 818, 1201</data>
          </data-series>
          <data-series name="Oceania">
            <data>2, 2, 2, 6, 13, 30, 46</data>
          </data-series>
        </vaadin-area-chart>
      </demo-viewer>
    </div>
  </div>

  <div class="elements-section">
    <h5>Stacked area chart</h5>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/area/stacked-area-polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/charts/area/stacked-area-angular2.ts"></demo-source>

      <vaadin-area-chart id="stacked-area">
        <title>Historic and Estimated Worldwide Population Growth by Region</title>
        <subtitle>Source: Wikipedia.org</subtitle>
        <x-axis tickmark-placement="on">
          <categories>1750, 1800, 1850, 1900, 1950, 1999, 2050</categories>
          <title enabled="false"></title>
        </x-axis>
        <y-axis min="0">
          <title>Billions</title>
          <labels formatter="function () { return this.value / 1000; }"></labels>
        </y-axis>
        <tooltip shared="true"
                 point-format='<span style="color:{series.color}">{series.name}</span>: <b>{point.percentage:.1f}%</b> ({point.y:.0f} millions)<br/>'></tooltip>
        <plot-options>
          <series stacking="normal" line-width="1">
          </series>
        </plot-options>
        <data-series name="Asia">
          <data>502, 635, 809, 947, 1402, 3634, 5268</data>
        </data-series>
        <data-series name="Africa">
          <data>106, 107, 111, 133, 221, 767, 1766</data>
        </data-series>
        <data-series name="Europe">
          <data>163, 203, 276, 408, 547, 729, 628</data>
        </data-series>
        <data-series name="America">
          <data>18, 31, 54, 156, 339, 818, 1201</data>
        </data-series>
        <data-series name="Oceania">
          <data>2, 2, 2, 6, 13, 30, 46</data>
        </data-series>
      </vaadin-area-chart>
    </demo-viewer>

  </div>
</template>

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="charts-links.jsp"/>
  <jsp:include page="suggestion-box.jsp"/>
</div>

<jsp:include page="bottom-actions.jsp"/>
