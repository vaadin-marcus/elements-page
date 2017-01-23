<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Pyramid Chart for Polymer, Angular 2, HTML5 | Vaadin Elements", request);%>


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

  <h1 class="helvetica-light">&lt;vaadin-pyramid-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Used to show hierarchically structured data in a pyramid shaped chart divided into
        vertical slices.</p>
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
<%request.setAttribute("chart", "vaadin-pyramid-chart.html");%>

<template is="dom-bind">
  <div class="elements-section">

    <h4>Examples</h4>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/charts/pyramid/polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/charts/pyramid/angular2.ts"></demo-source>

      <vaadin-pyramid-chart id="pyramid">
        <title>Sales pyramid</title>
        <plot-options>
          <series>
            <data-labels enabled="true" format="<b>{point.name}</b> ({point.y:.0f})" color="black"
                         soft-connector="true">
            </data-labels>
          </series>
        </plot-options>
        <legend enabled="false"></legend>
        <data-series name="Unique users">
          <data>
            ['Website visits',   15654],
            ['Downloads',       4064],
            ['Requested price list', 1987],
            ['Invoice sent',    976],
            ['Finalized',    846]
          </data>
        </data-series>
      </vaadin-pyramid-chart>
    </demo-viewer>
  </div>
</template>

<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <jsp:include page="charts-links.jsp"/>

</div>

<jsp:include page="bottom-actions.jsp"/>
