
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import" href="<%=request.getContextPath()%>/bower_components/vaadin-charts/vaadin-boxplot-chart.html">
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

  <h1 class="helvetica-light">&lt;vaadin-boxplot-chart&gt;
    <span>1.0</span>
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Box plot chart is good for the following things for SEO
        reasons</p>
    </div>

    <div class="span5">
      <div class="elements-install">
        <h4>Install</h4>
        <code>bower install --save vaadin-charts</code>
      </div>
      <a class="w-arrow-button blue small" href="https://vaadin.com/docs/-/part/charts/webcomponents-api/charts-getting-started.html">Show documentation</a></div>
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
      </ul>
    </div>
    <div class="span6">
      <ul>
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

  <h4>Demo</h4>
  <template id="stuff-for-head">
    <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
    <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha7/vaadin-boxplot-chart.html">

  </template>
  <view-source head="#stuff-for-head">
    <vaadin-boxplot-chart id="box-plot">
      <title>Vaadin Charts Box Plot Example</title>
      <legend enabled="false"></legend>
      <x-axis>
        <categories>1,2,3,4,5</categories>
        <title>Experiment No.</title>
      </x-axis>
      <y-axis>
        <title>Observations</title>
        <plot-lines value="932" color="red" width="1">
          <label align="center" text="Theoretical mean: 932'">
            <style color="gray"></style>
          </label>
        </plot-lines>
      </y-axis>

      <plot-options>
        <boxplot>
          <tooltip header-format="<em>Experiment No {point.key}</em><br/>"></tooltip>
        </boxplot>
        <scatter>
          <marker fill-color="white" line-width="1" line-color="#3090F0"></marker>
          <tooltip point-format="Observation: {point.y}"></tooltip>
        </scatter>
      </plot-options>
      <data-series name="Observations">
        <data>
          [760, 801, 848, 895, 965], [733, 853, 939, 980, 1080], [714, 762, 817, 870, 918], [724, 802, 806, 871, 950], [834, 836, 864, 882, 910]
        </data>
      </data-series>
      <data-series name="Outlier" type="scatter">
        <color>#3090F0</color>
        <data>
          [0, 644], [4, 718], [4, 951], [4, 969]
        </data>
      </data-series>
    </vaadin-boxplot-chart>
    <style>

    </style>

    <script>
    </script>
  </view-source>
</div>
<!-- Demo section end -->