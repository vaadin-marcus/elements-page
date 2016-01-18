<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/vaadin-charts/vaadin-sparkline.html">
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/vaadin-grid/vaadin-grid.html">
<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-hero-title row-fluid">
    <div class="span9">
      <h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>

    <div class="span3 hidden-phone">
      <span class="polymer-tag">Built with Polymer</span>
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
      <p class="lead helvetica-light">A sparkline is a very small line chart, typically drawn
        without axes or coordinates. It presents the general shape of the variation (typically over
        time) in some measurement, such as temperature or stock market price, in a simple and highly
        condensed way [wikipedia]</p>
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

  <h4>Demo</h4>
  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-charts/3.0.0-alpha8/vaadin-sparkline.html">
      <link rel="import" href="https://cdn.vaadin.com/vaadin-core-elements/latest/vaadin-grid/vaadin-grid.html">
      -->
    </div>
    <dom-module id="sparkline-example">
      <template>
        <vaadin-grid id="grid">
          <table>
            <colgroup>
              <col name="month" header-text="Month" width="100"/>
              <col name="data" header-text="Trend" width="200"/>
              <col name="latest" header-text="Latest value"/>
            </colgroup>
          </table>
        </vaadin-grid>

        <iron-ajax auto id="dataFetcher" url="<%=request.getContextPath()%>/stockData.json"
                   handle-as="json"
                   on-response="_dataLoaded" debounce-duration="300"></iron-ajax>
      </template>

      <script>
        HTMLImports.whenReady(function() {
          Polymer({
            is: 'sparkline-example',

            ready: function() {
              var grid = this.$.grid;

              grid.style.width = '450px';

              //vaadin-charts as a renderer for a vaadin-grid cell
              grid.columns[1].renderer = function(cell) {
                var sparkline = document.createElement('vaadin-sparkline');
                //TODO fix when styling has been fixed
                sparkline.style.width = '150px';
                sparkline.style.height = '48px';
                sparkline.setAttribute('data', cell.data);

                cell.element.innerHTML = '';
                cell.element.appendChild(sparkline);
              };

              grid.columns[2].renderer = function(cell) {
                cell.element.innerHTML = '';

                //show the last value of the data array
                var dataArray = cell.row.data.data;
                cell.element.innerHTML = '$' + dataArray[dataArray.length - 1];
              };
            },

            _dataLoaded: function(event) {
              this.$.grid.items = event.detail.response;
            }
          });
        });
      </script>
    </dom-module>

    <sparkline-example></sparkline-example>
  </view-source>
</div>

