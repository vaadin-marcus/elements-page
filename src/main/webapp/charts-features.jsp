<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects/>

<style>
  #features-grid {
    list-style: none;
    margin: 0;
    padding: 20px;
  }

  #features-grid .row-fluid {
    margin: 0;
  }

  #features-grid li {
    display: inline-block;
    vertical-align: top;
    padding-left: 51px;
  }

  #features-grid li::before {
    content: "";
  }

  #features-grid ul li {
    text-indent: 0;
  }

  .ie7 #features-grid li {
    zoom: 1;
    display: inline;
  }

  #features-grid li p {
    font-size: 13px;
    line-height: 1.3em;
  }

  #features-grid li h3 {
    margin: 0 0 10px 0;
    line-height: 1.4;
  }

  #features-grid li {
    background: no-repeat 0 3px;
  }

  #features-grid li.axis {
    background-image: url(<%=request.getContextPath()%>/img/charts/icon-axis.png);
  }

  #features-grid li.data {
    background-image: url(<%=request.getContextPath()%>/img/charts/icon-data.png);
  }

  #features-grid li.drill {
    background-image: url(<%=request.getContextPath()%>/img/charts/icon-drill.png);
  }

  #features-grid li.theme {
    background-image: url(<%=request.getContextPath()%>/img/charts/icon-theme.png);
  }

  #features-grid li.time {
    background-image: url(<%=request.getContextPath()%>/img/charts/icon-time.png);
  }

  #features-grid li.zoom {
    background-image: url(<%=request.getContextPath()%>/img/charts/icon-zoom.png);
  }

</style>

<div class="elements-section">
  <h4>Features</h4>
  <div id="features-grid">
    <ul class="row-fluid">
      <li class="data span4">
        <h3>Dynamic data</h3>

        <p>Data is automatically loaded from the server on demand. After loading, you can change
          data on the server at any time - the visualization just updates with an animation.</p>
      </li>
      <li class="axis span4">
        <h3>Multiple axes</h3>

        <p>Compare different variables by assigning a different X or Y-axis for each series. All
          options can be set independently for each series.</p>
      </li>
      <li class="zoom span4">
        <h3>Zooming</h3>

        <p>Charts allow zooming both over X and Y-axis to easily allow users to dive into the
          details of your data. The special timeline chart supports lazy loading from a massive
          time-based dataset while zooming.</p>
      </li>
    </ul>

    <ul class="row-fluid">
      <li class="drill span4">
        <h3>Drill down</h3>

        <p>You can listen to user click events for every part of the charts or show additional
          information on what is under the mouse cursor. Build drill down functionality specific
          to
          your application easily right from within the visualization.</p>
      </li>
      <li class="time span4">
        <h3>Smart time</h3>

        <p>Intelligent handling of time axis. The placement of the tick-marks is automatically
          optimized to mark the start of the month or the week, midnight and midday, or every full
          hour to make your data more readable.</p>
      </li>
      <li class="theme span4">
        <h3>Branding</h3>

        <p>Choose one of the included beautiful chart themes or build a custom theme matched to
          your
          company branding. Add a bit of wow to your application with the animated
          visualizations.</p>
      </li>
    </ul>

  </div>
</div>