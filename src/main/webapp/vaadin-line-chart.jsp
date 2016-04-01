<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Line Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>


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

  <h1 class="helvetica-light">&lt;vaadin-line-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Displays a series of data connected with straight lines.</p>
    </div>

    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
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
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-area-chart.jsp" /></portlet:renderURL>">Area
            chart</a></li>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areaspline-chart.jsp" /></portlet:renderURL>">Area
            spline chart</a></li>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-arearange-chart.jsp" /></portlet:renderURL>">Area
            range chart</a></li>

      </ul>
    </div>
    <div class="span6">
      <ul>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areasplinerange-chart.jsp" /></portlet:renderURL>">Area
            spline range chart</a></li>
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
  <%request.setAttribute("chart", "vaadin-line-chart.html");%>
  <h5>Basic line chart</h5>
  <view-source>
    <div class="head">
      <!--
      <jsp:include page="charts-imports.jsp"/>
      -->
    </div>
    <vaadin-line-chart id="lines-with-complex-html-tooltip">
      <title>Complex tooltip</title>

      <x-axis>
        <categories>Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec</categories>
      </x-axis>

      <tooltip shared="true" use-html="true" header-format="<small>{point.key}</small><table>"
               point-format="<tr><td style='color: {series.color}'>{series.name}: </td><td style='text-align: right'><b>{point.y} EUR</b></td></tr>"
               footer-format="">
      </tooltip>

      <data-series name="Short">
        <data>29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4</data>
      </data-series>
      <data-series name="Long named series">
        <data>129.9, 171.5, 126.4, 229.2, 134.0, 136.0, 35.6, 142.5, 116.4, 154.1, 195.6, 154.4
        </data>
      </data-series>
    </vaadin-line-chart>
  </view-source>

  <h5>Timeline chart</h5>
  <p>Any time based chart can be turned into a timeline chart by adding the <code>timeline</code>
    attribute to the chart element.</p>

  <view-source>
    <div class="head">
      <!--
      <jsp:include page="charts-imports.jsp"/>
      -->
    </div>
    <template is="dom-bind">
      <iron-ajax auto id="dataFetcher" url="<%=request.getContextPath()%>/aaplData.json"
                 handle-as="json"
                 last-response="{{seriesData}}"></iron-ajax>
      <vaadin-line-chart id="single-line-series" timeline>
        <title>AAPL Stock Price</title>
        <range-selector selected="1">
        </range-selector>
        <data-series name="AAPL" data="[[seriesData]]">
          <tooltip value-decimals="2">
          </tooltip>
        </data-series>
      </vaadin-line-chart>
    </template>
  </view-source>
</div>

<jsp:include page="charts-links.jsp"/>
<jsp:include page="suggestion-box.jsp"/>
