<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Bubble Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-bubble-chart&gt;
  </h1>
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
      <script src="https://cdn.vaadin.com/vaadin-elements/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-bubble-chart.html">
      -->
    </div>
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
  </view-source>
</div>
<!-- Demo section end -->
<jsp:include page="charts-links.jsp"/>