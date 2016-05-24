<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.PolymerElement" %>
<%@ page import="com.vaadin.elements.PolymerElements" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Web Components for business apps | Vaadin Elements", request);%>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/elements.css?20"/>
<style>
  #footer-wrapper {
    margin-top: 0;
  }
</style>

<div class="w-wallpaper-container elements-hero">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title">
    <h1>Vaadin Elements</h1>
  </div>
  <p class="lead">
    Material design inspired UI components for building great web apps.
    For mobile and desktop.
  </p>
  <p>
    Works on any HTML5 based stack.<br />
    Supports <a href="https://www.polymer-project.org">Polymer</a>
    and <a href="https://angular.io">Angular 2</a> data binding.
  </p>
</div>

<div class="w-wallpaper-container elements-hero-buttons">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">

    <div class="span3"><a class="button" id="demos-button" href="#demos">Demos</a></div>
    <div class="span3"><a class="button" href="https://vaadin.com/elements/videos">Videos</a>
    </div>
    <div class="span3 offset3">
      <a href="https://vaadin.com/docs/-/part/elements/elements-getting-started.html"
         class="button primary">Get Started</a>
    </div>

  </div>
</div>

<div class="w-wallpaper-container elements-pwa-competition">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">

    <div class="span9">
      <img alt="" class="pwa-banner-img" src="https://vaadin.com/documents/10187/11914215/pwa-competition-banner.png">
      <h5>Progressive Web App Competition</h5>
      <p>Learn to build a progressive web app and win a trip to Amsterdam in
        Vaadin PWA-competition. Make your mark and win the price.</p>
    </div>
    <div class="span3" style="text-align: center">
      <a href="https://vaadin.com/pwa-competition"
         class="button primary">Sign up now</a>
    </div>

  </div>
</div>

<div class="w-wallpaper-container zebra elements-category">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">

    <div class="span9">
      <h5>Core Elements
        <%
          GitHubRelease latestStableRelease = Releases.getLatestStableRelease("vaadin-grid");
          if (latestStableRelease != null) {
        %>
        <span class="version"><%=latestStableRelease.tagName%></span>
        <%}%>
      </h5>
      <p>Vaadin Core elements is an Apache 2.0 licensed set of web components designed for
        business applications. The set contains elements like data grids, combo boxes and date
        pickers.</p>
    </div>
    <div class="span3">
      <span>Free</span>
      Apache 2.0 license
      <a href="https://github.com/vaadin/vaadin-core-elements" class="w-arrow-button blue small">See
        on GitHub</a>
    </div>

  </div>
</div>

<div class="w-wallpaper-container zebra elements-category-tiles elements-category-core-tiles">
  <div class="w-wallpaper"></div>
  <div class="tile-container">

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-grid.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/grid.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/grid@2x.png 2x"
             alt="Polymer data table element for javascript">
        <div class="tile-details">
          <div class="tile-title">Grid</div>
          <div class="tile-description">
            Vaadin Grid is a fully featured datagrid for showing table data.
            It performs great even with huge data sets.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-combo-box.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/combobox.png?3"
             srcset="<%=request.getContextPath()%>/img/preview/combobox@2x.png?2 2x"
             alt="Filtering select for polymer and javacript">
        <div class="tile-details">
          <div class="tile-title">Combo Box</div>
          <div class="tile-description">
            Vaadin ComboBox is a filterable select element for situations where you have more than a
            few dozen items to select from.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-icons.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/icons.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/icons@2x.png 2x"
             alt="Free font icons for web applications">
        <div class="tile-details">
          <div class="tile-title">Icons</div>
          <div class="tile-description">
            Vaadin Icons is a set of 530 unique icons designed for web applications.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-upload.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/upload.png?3"
             srcset="<%=request.getContextPath()%>/img/preview/upload@2x.png?2 2x"
             alt="Upload component for Polymer and javascript">
        <div class="tile-details">
          <div class="tile-title">Upload</div>
          <div class="tile-description">
            Vaadin upload allows you to upload multiple files with progress indication.
            Supports drag and drop and manual file selection.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-date-picker.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/date-picker.png?3"
             srcset="<%=request.getContextPath()%>/img/preview/date-picker@2x.png?2 2x"
             alt="Polymer date picker">
        <div class="tile-details">
          <div class="tile-title">Date Picker</div>
          <div class="tile-description">
            Vaadin DatePicker allows you to select a date from a dropdown calendar.
          </div>
        </div>
      </a>
    </div>

  </div>
</div>

<div class="w-wallpaper-container zebra elements-category">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">

    <div class="span9">
      <h5>Charts <span><%=Releases.getLatestVersionNumber("vaadin-charts", "3.0.0")%></span></h5>
      <p>Vaadin Charts contains tens of different types of charts that allow you to visualize and
        interact with data. All charts support declarative and dynamic data binding.</p>
    </div>
    <div class="span3">
      Commercial license
      <a href="https://vaadin.com/charts"
         class="w-arrow-button blue small">See more</a>
    </div>

  </div>
</div>

<div class="w-wallpaper-container zebra elements-category-tiles elements-category-charts-tiles">
  <div class="w-wallpaper"></div>
  <div class="tile-container">

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-area-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/area.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/area@2x.png 2x"
             alt="Polymer area chart element">
        <div class="tile-details">
          <div class="tile-title">Area Chart</div>
          <div class="tile-description">
            Area chart highlights the area between a line chart and the axis.
            Areas can be on top of each other or stacked.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-arearange-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/arearange.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/arearange@2x.png 2x"
             alt="Polymer area range chart element">
        <div class="tile-details">
          <div class="tile-title">Area Range Chart</div>
          <div class="tile-description">
            An area range chart highlights the area between two line charts.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areaspline-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/areaspline.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/areaspline@2x.png 2x"
             alt="Polymer area spline chart element">
        <div class="tile-details">
          <div class="tile-title">Area Spline Chart</div>
          <div class="tile-description">
            An area spline chart highlights the area between the axis and a curved line chart.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areasplinerange-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/areasplinerange.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/areasplinerange@2x.png 2x"
             alt="Polymer area spline range chart element">
        <div class="tile-details">
          <div class="tile-title">Area Spline Range Chart</div>
          <div class="tile-description">
            An area spline range chart highlights the area between two spline charts.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-bar-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/bar.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/bar@2x.png 2x"
             alt="Polymer bar chart element">
        <div class="tile-details">
          <div class="tile-title">Bar Chart</div>
          <div class="tile-description">
            Display data with horizontal bars proportional to values.
            Bars can be grouped and stacked.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-boxplot-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/boxplot.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/boxplot@2x.png 2x"
             alt="Polymer box plot chart element">
        <div class="tile-details">
          <div class="tile-title">Box Plot Chart</div>
          <div class="tile-description">
            Box plot charts are used to indicate variability outside upper and lower quartiles.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-bubble-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/bubble.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/bubble@2x.png 2x"
             alt="Polymer bubble chart element">
        <div class="tile-details">
          <div class="tile-title">Bubble Chart</div>
          <div class="tile-description">
            A bubble chart can be used to display three dimensions of data with disks proportional
            to a value at a given x, y point.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-candlestick-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/candlestick.png"
             srcset="<%=request.getContextPath()%>/img/preview/candlestick@2x.png 2x"
             alt="Polymer candlestick chart element">
        <div class="tile-details">
          <div class="tile-title">Candlestick Chart</div>
          <div class="tile-description">
            A candlestick chart is a financial chart that combines a line chart and a bar chart.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-column-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/column.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/column@2x.png 2x"
             alt="Polymer column chart element">
        <div class="tile-details">
          <div class="tile-title">Column Chart</div>
          <div class="tile-description">
            Display data with vertical bars proportional to values.
            Bars can be grouped and stacked.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-columnrange-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/columnrange.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/columnrange@2x.png 2x"
             alt="Polymer column range chart">
        <div class="tile-details">
          <div class="tile-title">Column Range Chart</div>
          <div class="tile-description">
            Displays two values per data point, highlighting the range between them.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-errorbar-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/errorbar.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/errorbar@2x.png 2x"
             alt="Polymer error bar chart">
        <div class="tile-details">
          <div class="tile-title">Error Bar Chart</div>
          <div class="tile-description">
            Error bars can be used to indicate error or uncertainty in measurements.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-flags-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/flags.png"
             srcset="<%=request.getContextPath()%>/img/preview/flags@2x.png 2x"
             alt="Polymer flag chart element">
        <div class="tile-details">
          <div class="tile-title">Flag Chart</div>
          <div class="tile-description">
            A flag chart allows you to flag points on the timeline and axis.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-funnel-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/funnel.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/funnel@2x.png 2x"
             alt="Polymer funnel chart element">
        <div class="tile-details">
          <div class="tile-title">Funnel Chart</div>
          <div class="tile-description">
            Funnel charts are most often used to visualize the different stages in a company's sales
            process.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-gauge-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/gauge.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/gauge@2x.png 2x"
             alt="Polymer gauge chart element">
        <div class="tile-details">
          <div class="tile-title">Gauge Chart</div>
          <div class="tile-description">
            Displays a gauge where the angle corresponds to the value.
            Supports multiple axes.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-heatmap-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/heatmap.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/heatmap@2x.png 2x"
             alt="Polymer heat map element">
        <div class="tile-details">
          <div class="tile-title">Heat Map Chart</div>
          <div class="tile-description">
            Highlight areas in a matrix with a gradient to easily compare large amounts of data.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-line-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/line.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/line@2x.png 2x"
             alt="Polymer line chart element">
        <div class="tile-details">
          <div class="tile-title">Line Chart</div>
          <div class="tile-description">
            Displays a series of data connected with straight lines.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-ohlc-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/ohlc.png"
             srcset="<%=request.getContextPath()%>/img/preview/ohlc@2x.png 2x"
             alt="Polymer open-high-low-close chart element">
        <div class="tile-details">
          <div class="tile-title">OHLC Chart</div>
          <div class="tile-description">
            An open-high-low-close (OHLC) chart is a financial chart that shows the open, close,
            high and low values for a financial instrument for that day.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-pie-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/pie.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/pie@2x.png 2x"
             alt="Polymer pie chart element">
        <div class="tile-details">
          <div class="tile-title">Pie Chart</div>
          <div class="tile-description">
            Display proportions of values clearly with a pie chart.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-polygon-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/polygon.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/polygon@2x.png 2x"
             alt="Polymer polygon chart element">
        <div class="tile-details">
          <div class="tile-title">Polygon Chart</div>
          <div class="tile-description">
            Highlights an area defined by data points making up a polygon.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-pyramid-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/pyramid.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/pyramid@2x.png 2x"
             alt="Polymer pyramid chart element">
        <div class="tile-details">
          <div class="tile-title">Pyramid Chart</div>
          <div class="tile-description">
            Used to show hierarchically structured data in a pyramid shaped chart divided into
            vertical slices.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-scatter-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/scatter.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/scatter@2x.png 2x"
             alt="Polymer scatter plot chart element">
        <div class="tile-details">
          <div class="tile-title">Scatter Chart</div>
          <div class="tile-description">
            A scatter chart or scatter plot is a set of points from a two dimensional data set.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-solidgauge-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/solidgauge.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/solidgauge@2x.png 2x"
             alt="Polymer solid gauge chart element">
        <div class="tile-details">
          <div class="tile-title">Solid Gauge Chart</div>
          <div class="tile-description">
            A solid gauge chart shows a value as a colored angle of an arc.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-sparkline.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/sparkline.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/sparkline@2x.png 2x"
             alt="Poylmer spark line chart element">
        <div class="tile-details">
          <div class="tile-title">Sparkline</div>
          <div class="tile-description">
            Sparklines are small line charts that are displayed without axes or coordinates and are
            typically used to show time series data inline.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-spline-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/spline.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/spline@2x.png 2x"
             alt="Polymer spline chart element">
        <div class="tile-details">
          <div class="tile-title">Spline Chart</div>
          <div class="tile-description">
            Displays a set of data points connected by a curved line.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-treemap-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/treemap.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/treemap@2x.png 2x"
             alt="Polymer tree map chart element">
        <div class="tile-details">
          <div class="tile-title">Tree Map Chart</div>
          <div class="tile-description">
            Displays a set of hierarchical data in nested rectangles.
          </div>
        </div>
      </a>
    </div>

    <div class="tile">
      <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-waterfall-chart.jsp" /></portlet:renderURL>">
        <img src="<%=request.getContextPath()%>/img/preview/waterfall.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/waterfall@2x.png 2x"
             alt="Polymer waterfall chart element">
        <div class="tile-details">
          <div class="tile-title">Waterfall Chart</div>
          <div class="tile-description">
            A waterfall chart shows the cumulative effects of a step of sequentially applied
            positive or negative values.
          </div>
        </div>
      </a>
    </div>

  </div>
</div>

<div class="w-wallpaper-container zebra elements-category">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">

    <div class="span9">
      <h5>Google Elements</h5>
      <p>
        Vaadin Elements are designed to work seamlessly together with all the elements in <a
          href="https://www.polymer-project.org">Polymer</a>.
        Polymer includes an extensive set of Material Design components and components for
        integrating with Google products like Maps.
      </p>
    </div>
    <div class="span3">
      <a href="https://www.polymer-project.org" class="w-arrow-button blue small">Visit Polymer site</a>
    </div>

  </div>
</div>

<div class="w-wallpaper-container zebra elements-category-tiles elements-category-google-tiles">
  <div class="w-wallpaper"></div>
  <div class="tile-container">

    <%for (PolymerElement el : PolymerElements.getAll()) {%>
    <div class="tile">
      <a href="<%=el.getURL()%>">
        <img src="<%=request.getContextPath()%>/img/preview/<%=el.getName()%>.png?2"
             srcset="<%=request.getContextPath()%>/img/preview/<%=el.getName()%>@2x.png 2x"
             alt="">
        <div class="tile-details">
          <div class="tile-title"><%=el.getName()%>
          </div>
          <div class="tile-description">
            <%=el.getDescription()%>
          </div>
        </div>
      </a>
    </div>
    <%}%>

  </div>
</div>

<div class="w-wallpaper-container zebra elements-browser-support">
  <div class="w-wallpaper"></div>
  <div class="content">
    <h2 class="helvetica-light">Browser support for Vaadin elements</h2>
    <table>
      <thead>
        <tr>
          <th>IE / Edge</th>
          <th>Firefox</th>
          <th>Chrome</th>
          <th>Safari</th>
          <th>iOS Safari</th>
          <th>Chrome Android</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>IE11, Edge</td>
          <td>Latest</td>
          <td>Latest</td>
          <td>Latest</td>
          <td>iOS 9</td>
          <td>Latest</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

<div class="row-fluid elements-category-tiles signup-form">
  <h3>
    Want to get notified of updates to Vaadin Elements?
  </h3>
  <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2.js"></script>
  <script>
    hbspt.forms.create({
      css: '',
      portalId: '1840687',
      formId: '6126c3de-cf18-49b0-9534-cefa45d6f500'
    });
  </script>

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
          demo</a>
        <a class="button-dark
                  pseudo-before-container prepend-logo-polymer
                  pseudo-after-container append-logo-git"
           href="https://github.com/vaadin/expense-manager-demo">Polymer Source Code</a>
        <a class="button-dark
                  pseudo-before-container prepend-logo-angular2
                  pseudo-after-container append-logo-git"
           href="https://github.com/vaadin/expense-manager-ng-demo">Angular 2 Source Code</a>
      </div>
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
<%--<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>--%>
<script>
  $('#demos-button').click(function(event) {
    event.preventDefault();
    $('body, html').animate({
      scrollTop: $('.elements-demos').offset().top
    }, 800);
  });
</script>
