<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/vaadin-charts/vaadin-treemap-chart.html">
<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-hero-title row-fluid">
    <div class="span9">
      <h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>

    <div class="span3">
      <span class="polymer-tag">Built with Polymer</span>
    </div>
  </div>

  <h1 class="helvetica-light">&lt;vaadin-treemap-chart&gt;
    <span>1.0</span>
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span8">
      <p class="lead helvetica-light">Tree map chart is good for the following things for SEO
        reasons</p>
    </div>

    <div class="span4">
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
<div class="elements-section">
  <h4>Features</h4>

  <div class="row-fluid">
    <div class="span6">
      <ul>
        <li>Vector Graphics</li>
        <li>Dynamic data</li>
        <li>Multiple axes</li>
        <li>Zooming</li>
        <li>Branding</li>
        <li>Touch support</li>
      </ul>
    </div>

  </div>
</div>

<!-- Info section end -->

<!-- Demo section start -->
<div class="elements-section">
  <template id="stuff-for-head">
    <script
        src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
    <link rel="import"
          href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-treemap-chart.html">
  </template>

  <h4>Demo</h4>
  <view-source head="#stuff-for-head">
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

