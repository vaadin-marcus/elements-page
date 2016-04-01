<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Bar Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-bar-chart&gt;
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
        Display data with horizontal bars proportional to values. Bars can be grouped and
        stacked.
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

<!-- Intro section start -->

<!-- Info section start -->
<jsp:include page="charts-features.jsp"/>

<div class="elements-section">
  <h4>Similar charts</h4>

  <div class="row-fluid">
    <div class="span6">
      <ul>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-column-chart.jsp" /></portlet:renderURL>">Column chart</a></li>
      </ul>
    </div>
    <div class="span6">
      <ul>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-columnrange-chart.jsp" /></portlet:renderURL>">Column range chart</a></li>
      </ul>
    </div>
  </div>
</div>
<!-- Info section end -->

<!-- Demo section start -->
<%request.setAttribute("chart", "vaadin-bar-chart.html");%>
<div class="elements-section demo">

  <h4>Examples</h4>
  <h5>Basic bar chart</h5>
  <view-source>
    <div class="head">
      <!--
      <jsp:include page="charts-imports.jsp"/>
      -->
    </div>
    <vaadin-bar-chart id="basic-bar">
      <title>Stacked bar chart</title>
      <x-axis>
        <categories>Apples, Oranges, Pears, Grapes, Bananas</categories>
      </x-axis>
      <y-axis min="0">
        <title>Total fruit consumption</title>
      </y-axis>
      <legend reversed="true"></legend>
      <tooltip point-format="{series.name}: {point.y}. Total: {point.stackTotal}"></tooltip>
      <plot-options>
        <series stacking="normal">
        </series>
      </plot-options>
      <data-series name="John">
        <data>5, 3, 4, 7, 2</data>
      </data-series>
      <data-series name="Jane">
        <data>2, 2, 3, 2, 1</data>
      </data-series>
      <data-series name="Joe">
        <data>3, 4, 4, 2, 5</data>
      </data-series>
    </vaadin-bar-chart>
  </view-source>

  <h5>Bar chart with negative stack</h5>
  <view-source>
    <div class="head">
      <!--
      <jsp:include page="charts-imports.jsp"/>
      -->
    </div>
    <vaadin-bar-chart id="bar-with-negative-stack">
      <title>Population pyramid for Germany, midyear 2010</title>
      <subtitle>Source: www.census.gov</subtitle>

      <x-axis reversed="false">
        <categories>0-4, 5-9, 10-14, 15-19, 20-24, 25-29, 30-34, 35-39, 40-44, 45-49, 50-54,
          55-59, 60-64, 65-69, 70-74, 75-79, 80-84, 85-89, 90-94, 95-99, 100 +
        </categories>
        <labels step="1"/>
      </x-axis>
      <x-axis opposite="true" reversed="false" linked-to="0">
        <categories>0-4, 5-9, 10-14, 15-19, 20-24, 25-29, 30-34, 35-39, 40-44, 45-49, 50-54,
          55-59, 60-64, 65-69, 70-74, 75-79, 80-84, 85-89, 90-94, 95-99, 100 +
        </categories>
        <labels step="1"/>
      </x-axis>
      <y-axis>
        <title text=""></title>
        <labels formatter="function () { return Math.abs(this.value) + '%'; }"></labels>
      </y-axis>
      <plot-options>
        <series stacking="normal"/>
      </plot-options>
      <tooltip
          formatter="function () { return '<b>' + this.series.name + ', age ' + this.point.category + '</b><br/>' + 'Population: ' + Highcharts.numberFormat(Math.abs(this.point.y), 0) + '%'; }"></tooltip>
      <data-series name="Male">
        <data>-2.2, -2.2, -2.3, -2.5, -2.7, -3.1, -3.2, -3.0, -3.2, -4.3, -4.4, -3.6, -3.1, -2.4,
          -2.5, -2.3, -1.2, -0.6, -0.2, -0.0, -0.0
        </data>
      </data-series>
      <data-series name="Female">
        <data>2.1, 2.0, 2.2, 2.4, 2.6, 3.0, 3.1, 2.9, 3.1, 4.1, 4.3, 3.6, 3.4, 2.6, 2.9, 2.9, 1.8,
          1.2, 0.6, 0.1, 0.0
        </data>
      </data-series>
    </vaadin-bar-chart>
  </view-source>

  <h5>Stacked bar chart</h5>
  <view-source>
    <div class="head">
      <!--
      <jsp:include page="charts-imports.jsp"/>
      -->
    </div>
    <vaadin-bar-chart id="stacked-bar">
      <title>Stacked bar chart</title>
      <x-axis>
        <categories>Apples, Oranges, Pears, Grapes, Bananas</categories>
      </x-axis>
      <y-axis min="0">
        <title>Total fruit consumption</title>
      </y-axis>
      <legend reversed="true"></legend>
      <tooltip point-format="{series.name}: {point.y}. Total: {point.stackTotal}"></tooltip>
      <plot-options>
        <series stacking="normal">
        </series>
      </plot-options>
      <data-series name="John">
        <data>5, 3, 4, 7, 2</data>
      </data-series>
      <data-series name="Jane">
        <data>2, 2, 3, 2, 1</data>
      </data-series>
      <data-series name="Joe">
        <data>3, 4, 4, 2, 5</data>
      </data-series>
    </vaadin-bar-chart>
  </view-source>
</div>
<!-- Demo section end -->
<jsp:include page="charts-links.jsp"/>
<jsp:include page="suggestion-box.jsp"/>
