<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Tree Map Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-treemap-chart&gt;
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Displays a set of hierarchical data in nested rectangles.</p>
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
      <%request.setAttribute("chart", "vaadin-treemap-chart.html");%>
      <jsp:include page="charts-imports.jsp"/>
      -->
    </div>
    <vaadin-treemap-chart id="treemap-with-color-axis">
      <title>Vaadin Charts Treemap</title>
      <color-axis min-color="#FFFFFF" max-color="#7BB5EF"></color-axis>
      <data-series>
        <layout-algorithm>squarified</layout-algorithm>
        <data>
          <point>
            <name>A</name>
            <value>6</value>
            <color-value>1</color-value>
          </point>
          <point>
            <name>B</name>
            <value>6</value>
            <color-value>2</color-value>
          </point>
          <point>
            <name>C</name>
            <value>4</value>
            <color-value>3</color-value>
          </point>
          <point>
            <name>D</name>
            <value>3</value>
            <color-value>4</color-value>
          </point>
          <point>
            <name>E</name>
            <value>2</value>
            <color-value>5</color-value>
          </point>
          <point>
            <name>F</name>
            <value>2</value>
            <color-value>6</color-value>
          </point>
          <point>
            <name>G</name>
            <value>1</value>
            <color-value>7</color-value>
          </point>
        </data>
      </data-series>
    </vaadin-treemap-chart>
  </view-source>
</div>

<jsp:include page="charts-links.jsp"/>