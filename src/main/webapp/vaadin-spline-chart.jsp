<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/vaadin-charts/vaadin-spline-chart.html">
<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-hero-title row-fluid">
    <div class="span9">
      <h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>

    <div class="span3">
      <span class="polymer-tag">Built with Polymer</span>
    </div>
  </div>

  <h1 class="helvetica-light">&lt;vaadin-spline-chart&gt;
    <span>1.0</span>
  </h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span8">
      <p class="lead helvetica-light">Spline chart is good for the following things for SEO
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
          href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-spline-chart.html">
  </template>

  <h4>Demo</h4>
  <view-source head="#stuff-for-head">
    <dom-module id="spline-updating-each-second-example">
      <template>
        <vaadin-spline-chart id="updatingSpline" on-chart-loaded="loadListener">
          <chart animation="true" margin-right="10">
          </chart>
          <title>Live random data</title>


          <x-axis type="datetime" tick-pixel-interval="150">
          </x-axis>

          <y-axis>
            <title>Value</title>
            <plot-lines value="0" width="1" color="#808080"></plot-lines>
          </y-axis>

          <tooltip formatter="function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);}">
          </tooltip>

          <legend enabled="false"></legend>

          <exporting enabled="false"></exporting>

          <data-series name="Random data">
            <data>
              [(new Date()).getTime()-18000,Math.random()], [(new
              Date()).getTime()-17000,Math.random()], [(new Date()).getTime()-16000,Math.random()],
              [(new Date()).getTime()-15000,Math.random()], [(new
              Date()).getTime()-14000,Math.random()], [(new Date()).getTime()-13000,Math.random()],
              [(new Date()).getTime()-12000,Math.random()], [(new
              Date()).getTime()-11000,Math.random()], [(new Date()).getTime()-10000,Math.random()],
              [(new Date()).getTime()-9000,Math.random()], [(new
              Date()).getTime()-8000,Math.random()], [(new
              Date()).getTime()-7000,Math.random()], [(new Date()).getTime()-6000,Math.random()],
              [(new Date()).getTime()-5000,Math.random()], [(new
              Date()).getTime()-4000,Math.random()], [(new Date()).getTime()-3000,Math.random()],
              [(new Date()).getTime()-2000,Math.random()],
              [(new Date()).getTime()-1000,Math.random()], [(new Date()).getTime(),Math.random()]
            </data>
          </data-series>

        </vaadin-spline-chart>
      </template>


      <script>
        Polymer({
          is: 'spline-updating-each-second-example',

          properties: {
            isAttached: Boolean,
            isChartReady: Boolean
          },

          attached: function() {
            this.isAttached = true;
            this.updateChart();
          },

          detached: function() {
            this.isAttached = false;
          },

          loadListener: function(e) {
            this.isChartReady = true;
            this.updateChart();
          },

          updateChart: function() {
            if (this.isAttached && this.isChartReady) {
              var chart = this.$.updatingSpline.chart;
              var series = chart.series[0];
              var x = (new Date()).getTime(), // current time
                  y = Math.random();
              series.addPoint([x, y], true, true);

              this.async(this.updateChart, 1000);
            }
          }
        });
      </script>
    </dom-module>
    <spline-updating-each-second-example></spline-updating-each-second-example>
  </view-source>
</div>

