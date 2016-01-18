<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/elements.css"/>
<style>
  #footer-wrapper {
    margin-top: 0;
  }
</style>

<div class="w-wallpaper-container elements-hero">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title row-fluid">
    <div class="span9"><h1 class="helvetica-light">Vaadin Elements</h1></div>
    <div class="span3 hidden-phone"><span class="polymer-tag">Built with Polymer</span></div>
  </div>
  <p class="lead helvetica-light">Vaadin Elements is a set of custom HTML elements tailored for
    business applications. It extends the Google Polymer library with elements like data grid,
    charts and combo box so you can build the app your business needs. The elements are actively
    maintained and tested to ensure compatibility with the latest Polymer releases.</p>
  <div class="elements-hero-buttons">
    <div class="row-fluid">
      <div class="span3"><a class="button" href="#demos">Demos</a></div>
      <div class="span3"><a class="button" href="https://vaadin.com/elements/videos">Videos</a>
      </div>
      <div class="span3 offset3"><a class="button primary"
                                    href="https://vaadin.com/docs/-/part/elements/elements-getting-started.html">Get
        Started</a></div>
    </div>
  </div>
</div>

<div class="elements-category row-fluid">
  <div class="span9">
    <h5>Core Elements <span class="version">0.3.0</span></h5>
    <p>Vaadin Core elements is an Apache 2.0 licensed set of web components designed for
      business applications. The set contains elements like data grids, combo boxes and date
      pickers.</p>
  </div>
  <div class="span3">
    <span>Free</span>
    Apache 2.0 license
    <a href="https://github.com/vaadin/vaadin-core-elements" class="w-arrow-button blue small">See on GitHub</a>
  </div>
</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-grid.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/grid.png" alt="">
        <div>
          Vaadin Grid is a fully featured datagrid for showing table data. It performs great even
          with huge data sets.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span8">vaadin-grid</div>
        <div class="span4"><span>1.0.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-combo-box.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/combobox.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span8">vaadin-combo-box</div>
        <div class="span4"><span>1.0.0-alpha3</span></div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">
  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-icons.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/icons.png"
             alt="Free font icons for web applications">
        <div>
          Vaadin Icons is a set of 530 unique icons designed for web applications.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span8">vaadin-icons</div>
        <div class="span4"><span>pre-release</span></div>
      </div>
    </a>
  </div>
</div>


<div class="elements-category row-fluid">
  <div class="span9">
    <h5>Charts <span>3.0.0-alpha8</span></h5>
    <p>Vaadin Charts contains tens of different types of charts that allow you to visualize and
      interact with data. All charts support declarative and dynamic data binding.</p>
  </div>
  <div class="span3">
    <span>$ 795.00</span>
    Commercial license
    <a href="https://vaadin.com/charts" class="w-arrow-button blue small">Buy license</a>
  </div>
</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-area-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/area.png" alt="">
        <div>
          Area chart highlights the area between a line chart and the axis. Areas can be on top of
          each other or stacked.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-area-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-arearange-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/arearange.png" alt="">
        <div>
          An area range chart highlights the area between two line charts.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-arearange-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areaspline-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/areaspline.png" alt="">
        <div>
          An area spline chart highlights the area between the axis and a curved line chart.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-areaspline-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areasplinerange-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/areasplinerange.png" alt="">
        <div>
          An area spline range chart highlights the area between two spline charts.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-areasplinerange-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-bar-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/bar.png" alt="">
        <div>
          Display data with horizontal bars proportional to values. Bars can be grouped and
          stacked.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-bar-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-boxplot-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/boxplot.png" alt="">
        <div>
          Box plot charts are used to indicate variability outside upper and lower quartiles.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-boxplot-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-bubble-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/bubble.png" alt="">
        <div>
          A bubble chart can be used to display three dimensions of data with disks proportional to
          a value at a given x, y point.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-bubble-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-column-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/column.png" alt="">
        <div>
          Display data with vertical bars proportional to values. Bars can be grouped and
          stacked.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-column-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-columnrange-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/columnrange.png" alt="">
        <div>
          Displays two values per data point, highlighting the range between them.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-columnrange-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-errorbar-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/errorbar.png" alt="">
        <div>
          Error bars can be used to indicate error or uncertainty in measurements.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-errorbar-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-funnel-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/funnel.png" alt="">
        <div>
          Funnel charts are most often used to visualize the different stages in a company's sales
          process.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-funnel-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-gauge-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/gauge.png" alt="">
        <div>
          Displays a gauge where the angle corresponds to the value. Supports multiple axes.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-gauge-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-heatmap-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/heatmap.png" alt="">
        <div>
          Highlight areas in a matrix with a gradient to easily compare large amounts of data.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-heatmap-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-line-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/line.png" alt="">
        <div>
          Displays a series of data connected with straight lines.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-line-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-pie-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/pie.png" alt="">
        <div>
          Display proportions of values clearly with a pie chart.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-pie-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-polygon-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/polygon.png" alt="">
        <div>
          Highlights an area defined by data points making up a polygon.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-polygon-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-pyramid-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/pyramid.png" alt="">
        <div>
          Used to show hierarchically structured data in a pyramid shaped chart divided into
          vertical slices.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-pyramid-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-scatter-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/scatter.png" alt="">
        <div>
          A scatter chart or scatter plot is a set of points from a two dimensional data set.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-scatter-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-solidgauge-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/solidgauge.png" alt="">
        <div>
          A solid gauge chart shows a value as a colored angle of an arc.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-solidgauge-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-sparkline.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/sparkline.png" alt="">
        <div>
          Sparklines are small line charts that are displayed without axes or coordinates and are
          typically used to show time series data inline.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-sparkline</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-spline-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/spline.png" alt="">
        <div>
          Displays a set of data points connected by a curved line.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-spline-chart</div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-treemap-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/treemap.png" alt="">
        <div>
          Displays a set of hierarchical data in nested rectangles.


          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-treemap-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-waterfall-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/waterfall.png" alt="">
        <div>
          A waterfall chart shows the cumulative effects of a step of sequentially applied positive
          or negative values.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span12">vaadin-waterfall-chart</div>
      </div>
    </a>
  </div>

</div>

<div class="w-wallpaper-container elements-demos">
  <a name="demos"></a>
  <div class="w-wallpaper">&nbsp;</div>

  <h2 class="helvetica-light">Demos</h2>

  <div class="row-fluid elements-demos-demo">
    <div class="span8"><img alt=""
                            src="https://vaadin.com/documents/10187/11914215/demo-expense_manager/f254d03f-368c-4793-baa9-a46ad1ad6ea1?t=1452512389930"/>
    </div>

    <div class="span4">
      <div>
        <h5>Expense Manager</h5>

        <p class="lead helvetica-light">Fully responsive and offline enabled application that
          showcases Grid and Charts.</p>
        <a class="w-arrow-button blue" href="https://demo.vaadin.com/expense-manager/">See live
          demo</a> <a class="w-arrow-button small"
                      href="https://github.com/vaadin/expense-manager-demo">Fork on GitHub</a></div>
    </div>
  </div>

  <div class="row-fluid elements-demos-demo">
    <div class="span8"><img alt=""
                            src="https://vaadin.com/documents/10187/11914215/demo-fitness_tracker/52cdff09-c1e6-4299-b0d1-3cf54f30b1de?t=1452512402093"/>
    </div>

    <div class="span4">
      <div>
        <h5>Fitness Tracker</h5>

        <p class="lead helvetica-light">Fully responsive and offline enabled application that
          showcases Grid and Charts.</p>
        <a class="w-arrow-button blue" href="http://demo.vaadin.com/fitness-tracker/">See live
          demo</a> <a class="w-arrow-button small"
                      href="https://github.com/vaadin/fitness-tracker-demo">Fork on GitHub</a></div>
    </div>
  </div>
</div>

