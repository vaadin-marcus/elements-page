<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/elements.css"/>

<div class="w-wallpaper-container elements-hero">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title row-fluid">
    <div class="span9"><h1 class="helvetica-light">Vaadin Elements</h1></div>
    <div class="span3"><span class="polymer-tag">Built with Polymer</span></div>
  </div>
  <p class="lead helvetica-light">Vaadin Elements is a set of custom HTML elements tailored for
    business applications. It extends the Google Polymer library with elements like data grid,
    charts and combo box so you can build the app your business needs. The elements are actively
    maintained and tested to ensure compatibility with the latest Polymer releases.</p>
  <div class="elements-hero-buttons">
    <div class="row-fluid">
      <div class="span3"><a class="button" href="#demos">Demos</a></div>
      <div class="span3"><a class="button" href="#">Videos</a></div>
      <div class="span3 offset3"><a class="button primary" href="#">Get Started</a></div>
    </div>
  </div>
</div>

<div class="elements-category row-fluid">
  <div class="span9">
    <h5>Core Elements <span>0.3</span></h5>
    <p>Vaadin Core elements is an Apache 2.0 licensed set of web components designed for
      business applications. The set contains elements like data grids, combo boxes and date
      pickers.</p>
  </div>
  <div class="span3">
    <span>Free</span>
    Apache 2.0 license
    <a href="#" class="w-arrow-button blue small">See on GitHub</a>
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
        <div class="span6">vaadin-grid</div>
        <div class="span6"><span>1.0</span></div>
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
        <div class="span6">vaadin-combo-box</div>
        <div class="span6"><span>1.0</span></div>
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
        <div class="span6">vaadin-icons</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>
</div>


<div class="elements-category row-fluid">
  <div class="span9">
    <h5>Charts <span>3.0.0</span></h5>
    <p>Vaadin Charts contains tens of different types of charts that allow you to visualize and
      interact with data. All charts support declarative and dynamic data binding.</p>
  </div>
  <div class="span3">
    <span>$ 795.00</span>
    Commercial license
    <a href="#" class="w-arrow-button blue small">Buy license</a>
  </div>
</div>

<div class="row-fluid elements-category-tiles">

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-area-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/area.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-area-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-arearange-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/arearange.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-arearange-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-areaspline-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areasplinerange-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/areasplinerange.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.

          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-areasplinerange-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-bar-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-boxplot-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/boxplot.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-boxplot-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-bubble-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-column-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/column.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-column-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-columnrange-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-errorbar-chart.jsp" /></portlet:renderURL>">

      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/errorbar.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-errorbar-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-funnel-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-gauge-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/gauge.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-gauge-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-heatmap-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-line-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/line.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-line-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-pie-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-polygon-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/polygon.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-polygon-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-pyramid-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-scatter-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/scatter.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-scatter-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-solidgauge-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-sparkline-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/sparkline.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-sparkline</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-spline-chart</div>
        <div class="span6"><span>1.0</span></div>
      </div>
    </a>
  </div>

  <div class="span6 tile">
    <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-treemap-chart.jsp" /></portlet:renderURL>">
      <div class="tile-details">
        <img src="<%=request.getContextPath()%>/img/preview/treemap.png" alt="">
        <div>
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-treemap-chart</div>
        <div class="span6"><span>1.0</span></div>
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
          Vaadin ComboBox is a filterable select element for situations where you have more
          than a few dozen item to select from.
          <span>Learn more</span>
        </div>
      </div>
      <div class="tile-title row-fluid">
        <div class="span6">vaadin-waterfall-chart</div>
        <div class="span6"><span>1.0</span></div>
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

