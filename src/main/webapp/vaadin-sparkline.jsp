<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Sparkline Chart for Polymer, HTML5 frameworks | Vaadin Elements", request);%>

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

  <h1 class="helvetica-light">&lt;vaadin-sparkline&gt;
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Sparklines are small line charts that are displayed without
        axes or coordinates and are
        typically used to show time series data inline.</p>
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
  <view-source externals="<%=request.getContextPath()%>/sparkline-example.html" editable="no">
    <div class="head">
      <!--
      <%request.setAttribute("chart", "vaadin-sparkline.html");%>
      <jsp:include page="charts-imports.jsp"/>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-core-elements/latest/vaadin-grid/vaadin-grid.html">
      -->
    </div>

    <link rel="import" href="<%=request.getContextPath()%>/sparkline-example.html">

    <sparkline-example data-url="<%=request.getContextPath()%>/stockData.json"></sparkline-example>
  </view-source>
</div>

<jsp:include page="charts-links.jsp"/>