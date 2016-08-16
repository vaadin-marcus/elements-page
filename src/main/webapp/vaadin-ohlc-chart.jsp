<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("OHLC Chart for Polymer, Angular 2, HTML5 | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-ohlc-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">An open-high-low-close (OHLC) chart is a financial chart that that shows the open,
        close, high and low values for a financial instrument for that day.</p>
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
<%request.setAttribute("chart", "vaadin-ohlc-chart.html");%>

<template is="dom-bind">
  <div class="elements-section">

    <h4>Examples</h4>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/ohlc/polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/charts/ohlc/angular2.ts"></demo-source>

      <template is="dom-bind">
        <iron-ajax
            auto
            id="dataFetcher"
            url="<%=request.getContextPath()%>/ohlc_data.json"
            handle-as="json"
            last-response="{{seriesData}}"></iron-ajax>
        <vaadin-ohlc-chart id="ohlc-series" timeline>
          <chart-title>AAPL Stock Price</chart-title>
          <range-selector selected="2">
          </range-selector>
          <data-series name="AAPL" data="[[seriesData]]">
            <tooltip value-decimals="2">
            </tooltip>
            <data-grouping>
              <units>
                <name>week</name>
                <multiples>[3]</multiples>
              </units>
              <units>
                <name>month</name>
                <multiples>[1, 2, 3, 4, 6]</multiples>
              </units>
            </data-grouping>
          </data-series>
        </vaadin-ohlc-chart>
      </template>
    </demo-viewer>
  </div>
</template>
<!-- Demo section end -->

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="charts-links.jsp"/>

</div>

<jsp:include page="bottom-actions.jsp"/>
