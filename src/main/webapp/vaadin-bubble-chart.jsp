<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Bubble Chart for Polymer, Angular 2, HTML5 | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-bubble-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">A bubble chart can be used to display three dimensions of data with disks proportional to
        a value at a given x, y point.</p>
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
<%request.setAttribute("chart", "vaadin-bubble-chart.html");%>

<template is="dom-bind">
  <div class="elements-section">

    <h4>Examples</h4>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/bubble/polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/charts/bubble/angular2.ts"></demo-source>

      <vaadin-bubble-chart id="bubble-chart">
        <chart zoom-type="xy"></chart>
        <title>Vaadin Charts Bubbles</title>
        <data-series>
          <data>
            [97, 36, 79], [94, 74, 60], [68, 76, 58], [64, 87, 56], [68, 27, 73], [74, 99, 42], [7,
            93, 87], [51, 69, 40], [38, 23, 33], [57, 86, 31]
          </data>
        </data-series>
        <data-series>
          <data>
            [25, 10, 87], [2, 75, 59], [11, 54, 8], [86, 55, 93], [5, 3, 58], [90, 63, 44], [91, 33,
            17], [97, 3, 56], [15, 67, 48], [54, 25, 81]
          </data>
        </data-series>
        <data-series>
          <data>
            [47, 47, 21], [20, 12, 4], [6, 76, 91], [38, 30, 60], [57, 98, 64], [61, 17, 80], [83, 60,
            13], [67, 78, 75], [64, 12, 10], [30, 77, 82]
          </data>
        </data-series>
      </vaadin-bubble-chart>
    </demo-viewer>
  </div>
</template>
<!-- Demo section end -->

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="charts-links.jsp"/>

</div>

<jsp:include page="bottom-actions.jsp"/>
