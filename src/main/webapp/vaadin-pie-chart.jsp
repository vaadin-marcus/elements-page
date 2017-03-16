<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>


<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Pie Chart for Polymer, Angular 2, HTML5 | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-pie-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Display proportions of values clearly with a pie chart.</p>
    </div>

    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-charts</code>
      </div>
      <a href="https://vaadin.com/docs/-/part/charts/webcomponents-api/charts-getting-started.html"
         class="w-button primary">Documentation</a>
    </div>
  </div>
</div>

<!-- Intro section end -->

<!-- Info section start -->
<jsp:include page="charts-features.jsp"/>
<jsp:include page="get-help.jsp"/>
<!-- Info section end -->

<!-- Demo section start -->
<%request.setAttribute("chart", "vaadin-pie-chart.html");%>

<template is="dom-bind">
  <div class="elements-section">

    <h4>Examples</h4>
    <chart-demo-viewer>
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/pie/polymer.html"></demo-source>

      <vaadin-pie-chart id="pie-with-legend">
        <title>Browser market shares at a specific website, 2014</title>
        <tooltip value-decimals="1" point-format="{series.name}: <b>{point.percentage:.1f}%</b>">
        </tooltip>
        <plot-options>
          <pie allow-point-select="true" show-in-legend="true" cursor="pointer">
            <data-labels enabled="true" format="<b>{point.name}</b>:    {point.percentage} %">
            </data-labels>
          </pie>
        </plot-options>

        <data-series name="Browser share">
          <data>
            ["Firefox", 45.0], ["IE", 26.8], ["Chrome", 12.8], ["Safari", 8.5], ["Opera", 6.2], ["Others", 0.7],
          </data>
        </data-series>
      </vaadin-pie-chart>
    </chart-demo-viewer>
  </div>
</template>

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="charts-links.jsp"/>

</div>

<jsp:include page="bottom-actions.jsp"/>
