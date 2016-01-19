<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/vaadin-charts/vaadin-gauge-chart.html">
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

  <h1 class="helvetica-light">&lt;vaadin-gauge-chart&gt;
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Displays a gauge where the angle corresponds to the value.
        Supports multiple axes.</p>
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

<div class="elements-section">
  <h4>Similar charts</h4>

  <div class="row-fluid">
    <div class="span6">
      <ul>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-solidgauge-chart.jsp" /></portlet:renderURL>">Solid
            gauge chart</a></li>
      </ul>
    </div>

  </div>
</div>

<!-- Info section end -->

<!-- Demo section start -->
<div class="elements-section">
  <h4>Examples</h4>
  <h5>Angular gauge chart</h5>
  <view-source demo-name="Angular gauge chart">
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-gauge-chart.html">
      -->
    </div>
    <vaadin-gauge-chart id="angular-gauge">
      <chart plot-background-color="null" plot-background-image="null" plot-border-width="0"
             plot-shadow="false"></chart>
      <title>Speedometer</title>
      <pane start-angle="-150" end-angle="150">
        <background border-width="0" border-radius="109%">
          <background-color>
            <linear-gradient x1="0" y1="0" x2="0" y2="1">
            </linear-gradient>
            <stops>0, #ffffff</stops>
            <stops>1, #333333</stops>
          </background-color>
        </background>
        <background border-width="1" border-radius="107%">
          <background-color>
            <linear-gradient x1="0" y1="0" x2="0" y2="1">
            </linear-gradient>
            <stops>0, #ffffff</stops>
            <stops>1, #333333</stops>
          </background-color>
        </background>
        <background>
        </background>
        <background background-color="#DDD" border-width="0" outer-radius="105%"
                    inner-radius="103%">
        </background>
      </pane>
      <y-axis min="0" max="200" minor-tick-interval="auto" minor-tick-width="1"
              minor-tick-lenght="10" minor-tick-position="inside" tick-pixel-interval="30"
              tick-width="2" tick-position="inside" tick-length="10" tick-color="#666"
              grid-line-width="0">
        <labels step="2" rotation="auto"></labels>
        <title>km/h</title>
        <plot-bands from="0" to="120" color="#55BF3B"></plot-bands>
        <plot-bands from="120" to="160" color="#DDDF0D"></plot-bands>
        <plot-bands from="160" to="200" color="#DF5353"></plot-bands>
      </y-axis>
      <data-series name="Speed">
        <data>
          80
        </data>
      </data-series>
    </vaadin-gauge-chart>
  </view-source>

  <h5>Dual axis gauge chart</h5>
  <view-source demo-name="Dual axis gauge chart">
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-gauge-chart.html">
      -->
    </div>
    <vaadin-gauge-chart id="gauge-with-dual-axes">
      <chart align-ticks="false" plot-background-color="null" plot-background-image="null"
             plot-border-width="0" plot-shadow="false"></chart>
      <title>Speedometer with dual axes</title>
      <pane start-angle="-150" end-angle="150"></pane>
      <y-axis min="0" max="200" line-color="#339" tick-color="#339" minor-tick-color="#339"
              offset="-25" line-width="2" tick-length="5" minor-tick-length="5" end-on-tick="false">
        <labels distance="-20" rotation="auto"></labels>
      </y-axis>
      <y-axis min="0" max="124" tick-position="outside" line-color="#933" line-width="2"
              minor-tick-position="outside" tick-color="#933" minor-tick-color="#933"
              tick-length="5" minor-tick-length="5" offset="-20" end-on-tick="false">
        <labels distance="12" rotation="auto"></labels>
      </y-axis>
      <tooltip enabled="false"></tooltip>
      <plot-options>
        <gauge>
          <data-labels
              formatter="function () { return this.y + ' km/h<br/>' + Math.round(this.y * 0.621) + ' mph'; }">
            <background-color>
              <linear-gradient x1="0" y1="0" x2="0" y2="1">
              </linear-gradient>
              <stops>0, #DDD</stops>
              <stops>1, #FFF</stops>
            </background-color>
          </data-labels>
        </gauge>
      </plot-options>
      <data-series>
        <name>Speed</name>
        <data>80</data>
      </data-series>
    </vaadin-gauge-chart>
  </view-source>
</div>

