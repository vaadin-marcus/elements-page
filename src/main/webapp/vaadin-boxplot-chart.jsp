<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Box Plot Chart for Polymer, Angular2, HTML5 | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-boxplot-chart&gt;
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
        Box plot charts are used to indicate variability outside upper and lower quartiles.</p>
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
<%request.setAttribute("chart", "vaadin-boxplot-chart.html");%>

<template is="dom-bind">
  <div class="elements-section">

    <h4>Examples</h4>

    <chart-demo-viewer>
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/boxplot/polymer.html"></demo-source>

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
    </chart-demo-viewer>
  </div>
</template>
<!-- Demo section end -->

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="charts-links.jsp"/>

</div>

<jsp:include page="bottom-actions.jsp"/>
