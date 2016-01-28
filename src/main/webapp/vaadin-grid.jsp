<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Material design data table for Polymer | Vaadin Elements", request);%>

<!-- Imports -->
<jsp:include page="imports.jsp"/>

<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title row-fluid">
    <div class="span9"><h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>
    <div class="span3 hidden-phone"><a href="https://www.polymer-project.org" class="polymer-tag">Built
      with Polymer</a></div>
  </div>
  <h1 class="helvetica-light">&lt;vaadin-grid&gt;
    <span><%=Releases.getLatestVersionNumber("vaadin-grid", "1.0.0")%></span></h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Vaadin Grid is a fully featured datagrid for showing table
        data. It performs great even with huge data sets, fully supporting paging and lazy loading
        from any data source like a REST API. Grid allows you sort and filter data and customize how
        each cell gets rendered.</p>
    </div>
    <div class="span5">
      <div class="elements-install">
        <h4>Install</h4>
        <code>bower install --save vaadin-grid</code>
      </div>
      <a href="https://vaadin.com/docs/-/part/elements/vaadin-grid/overview.html"
         class="w-arrow-button blue small">Show documentation</a>
      <a href="https://github.com/vaadin/vaadin-grid" class="w-arrow-button github small">View on
        GitHub</a>
    </div>
  </div>
</div>


<!-- Intro section start -->

<!-- Info section start -->
<a name="features"></a>
<div class="elements-section">
  <h4>Features</h4>
  <div class="row-fluid">
    <div class="span6">
      <ul>
        <li>Lazy loading &ndash; Lazy loading of data from any data source</li>
        <li>Big data &ndash; Easily present and scroll through 100k lines of data in a single UI
          component
        </li>
        <li>Custom headers &ndash; Combine multiple rows and display components in your grid
          headers
        </li>
        <li>Smooth scrolling &ndash; Lightning fast and smooth hardware accelerated scrolling by
          reusing DOM elements
        </li>
        <li>Super efficient &ndash; Super efficient custom renderers for presenting custom data any
          way you need to
        </li>
        <li>Expanding row details</li>
      </ul>
    </div>
    <div class="span6">
      <ul>
        <li>Touch event and mobile support, and keyboard navigation</li>
        <li>Can be used with any JavaScript library or framework that supports Web Components, like
          Angular 2, React, Ember 2, jQuery
        </li>
        <li>Built on top of Google Polymer</li>
        <li>Material Design inspired styles to fit in with Paper Elements</li>
        <li>Customize the theme of the data grid to match the rest of your application</li>
        <li>Free to use under Apache License 2.0</li>
      </ul>
    </div>
  </div>
</div>

<!-- Info section end -->
<% List<GitHubRelease> latestReleases = Releases.getLatestReleases("vaadin-grid");
  if (latestReleases != null && !latestReleases.isEmpty()) {
%>
<div class="elements-section">
  <h4>Latest releases</h4>
  <%--A small part of me died for writing this--%>
  <% for (GitHubRelease release : latestReleases) {%>
  <div class="row-fluid">
    <span class="span9"><a href="<%=release.htmlUrl%>"><%=release.name%>
    </a></span>
    <time is="relative-time" datetime="<%=release.publishedAt%>" class="span3"></time>
  </div>
  <%}%>
</div>
<%}%>
<!-- Demo section start -->

<div class="elements-section">
  <h4>Examples</h4>
  <script>
    function getJSON(url, callback) {
      var xhr = new XMLHttpRequest();
      xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
          callback(JSON.parse(xhr.responseText));
        }
      };
      xhr.open('GET', url, true);
      xhr.send();
    }

    var usersArray = [];
  </script>



  <h5>Simple use with an array data source</h5>
  <p>
    Simple use case where the grid is populated with data from an array. The array data is fetched
    from a JSON file with an Ajax request and mapped to columns with <code>&lt;col
    name="json.property.path"&gt;</code>.
  </p>
  <p>
    <a href="https://vaadin.com/docs/-/part/elements/vaadin-grid/datasources.html">Other data sources are documented here.</a>
  </p>
  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-core-elements/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import"
            href="https://cdn.vaadin.com/vaadin-core-elements/latest/vaadin-grid/vaadin-grid.html">
      -->
    </div>
    <style>
      #simple {
        height: 300px;
      }
    </style>
    <vaadin-grid id="simple">
      <table>
        <colgroup>
          <col name="firstName"/>
          <col name="lastName"/>
          <col name="email"/>
        </colgroup>
      </table>
    </vaadin-grid>

    <script>
      (function() {
        HTMLImports.whenReady(function() {
          var grid = document.querySelector('#simple');

          getJSON('http://demo.vaadin.com/demo-data/1.0/people', function(json) {
            grid.items = json.result;
          });
        });
      })();
    </script>
  </view-source>

  <h5>Lazy loading a large data set</h5>
  <p>
    When you have more than a few items, it makes sense to only fetch a smaller subset up front and
    then load the rest of rows as (and if) you need them. With Vaadin Grid you can do this easily by
    defining a function data source. We also customized the header texts with a <code>&lt;thead&gt;</code>.
  </p>
  <p>
    <a href="https://vaadin.com/docs/-/part/elements/vaadin-grid/datasources.html">Read more about
      vaadin-grid data sources.</a>
  </p>
  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-core-elements/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import"
            href="https://cdn.vaadin.com/vaadin-core-elements/latest/vaadin-grid/vaadin-grid.html">
      -->
    </div>
    <style>
      #lazy {
        height: 300px;
      }
    </style>
    <vaadin-grid id="lazy">
      <table>
        <colgroup>
          <col name="number" width="80"/>
          <col name="firstName"/>
          <col name="lastName"/>
          <col name="email"/>
        </colgroup>
        <thead>
        <tr>
          <th>#</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
        </tr>
        </thead>
      </table>
    </vaadin-grid>

    <script>
      (function() {
        HTMLImports.whenReady(function() {
          var grid = document.querySelector('#lazy');

          grid.columns[0].renderer = function(cell){
            cell.element.innerText = cell.row.index;
          };

          grid.items = function(params, callback) {
            getJSON('http://demo.vaadin.com/demo-data/1.0/people?index=' + params.index + '&count=' + params.count, function(json) {
              callback(json.result, json.size);
            });
          };
        });
      })();
    </script>
  </view-source>

  <h5>Sorting, filtering and selection</h5>
  <p>
    Vaadin Grid supports sorting and filtering data. Here we have added simple sorting on all
    columns
    and filtering on the first name column. <a
      href="https://vaadin.com/docs/-/part/elements/vaadin-grid/sort.html">Read more about the
    available sorting options.</a>
  </p>
  <p>
    This demo also shows multiple selection with keyboard navigation support. For more info on
    selection modes, check out the <a
      href="https://vaadin.com/docs/-/part/elements/vaadin-grid/selection.html">documentation</a>.
  </p>
  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-core-elements/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import"
            href="https://cdn.vaadin.com/vaadin-core-elements/latest/vaadin-grid/vaadin-grid.html">
      -->
    </div>
    <style>
      #sort {
        height: 300px;
      }
    </style>
    <paper-input id="filter" label="Filter by first name"></paper-input>
    <vaadin-grid id="sort" selection-mode="multi">
      <table>
        <colgroup>
          <col name="firstName" sortable/>
          <col name="lastName" sortable/>
          <col name="email" sortable/>
        </colgroup>
      </table>
    </vaadin-grid>

    <script>
      (function() {
        HTMLImports.whenReady(function() {
          var grid = document.querySelector('#sort');
          var users = [];

          getJSON('http://demo.vaadin.com/demo-data/1.0/people', function(json) {
            users = json.result;
            grid.items = users;
          });

          grid.addEventListener('sort-order-changed', function() {
            var sortOrder = grid.sortOrder[0];
            var sortProperty = grid.columns[sortOrder.column].name;
            var sortDirection = sortOrder.direction;
            grid.items.sort(function(a, b) {
              var res;
              var path = sortProperty.split('.');
              for (var i = 0; i < path.length; i++) {
                a = a[path[i]];
                b = b[path[i]];
              }
              if (!isNaN(a)) {
                res = parseInt(a, 10) - parseInt(b, 10);
              } else {
                res = a.localeCompare(b);
              }

              if ('desc' === sortDirection) {
                res *= -1;
              }
              return res;
            });
          });

          var filterInput = document.querySelector('#filter');
          filterInput.addEventListener('value-changed', function() {
            var filterText = filterInput.value.toLowerCase();
            grid.items = users.filter(function(val) {
              if (filterText) {
                return (val.firstName.toLowerCase()).indexOf(filterText) > -1;
              } else {
                return true;
              }
            });
          });
        });
      })();
    </script>
  </view-source>

  <h5>Frozen and hidable columns</h5>
  <p>
    If you have a lot of columns, you may want to freeze some of the columns to make the table
    easier to read. You can also turn on column hiding to allow the user to show or hide columns
    that may not be relevant to them. <a
      href="https://vaadin.com/docs/-/part/elements/vaadin-grid/columns.html">Read more about
    configuring columns.</a>
  </p>

  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-core-elements/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import"
            href="https://cdn.vaadin.com/vaadin-core-elements/latest/vaadin-grid/vaadin-grid.html">
      -->
    </div>
    <style>

      #frozen {
        height: 300px;
      }

    </style>
    <vaadin-grid id="frozen" frozen-columns="2">
      <table>
        <colgroup>
          <col name="firstName"/>
          <col name="lastName"/>
          <col name="email"/>
          <col name="address.phone" hidable/>
          <col name="address.street" hidable/>
          <col name="address.city" hidable/>
          <col name="address.state" hidable/>
          <col name="address.zip" hidable/>
          <col name="address.country" hidable hidden/>
        </colgroup>
      </table>
    </vaadin-grid>

    <script>
      (function() {
        HTMLImports.whenReady(function() {
          var grid = document.querySelector('#frozen');

          getJSON('http://demo.vaadin.com/demo-data/1.0/people', function(json) {
            grid.items = json.result;
          });

        });
      })();
    </script>
  </view-source>
  <%--
    <h5>Details row</h5>
    <p>
      Sometimes you need to show more information than you can fit on a single row. In those cases,
      you can use a details row to display any element below the row. <a
        href="https://vaadin.com/docs/-/part/elements/vaadin-grid/details.html">Read more about
      showing row details.</a>
    </p>
    <view-source externals="<%=request.getContextPath()%>/details-row.html">
      <div class="head">
        <!--
        <script src="https://cdn.vaadin.com/vaadin-core-elements/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
        <link rel="import"
              href="https://cdn.vaadin.com/vaadin-core-elements/latest/vaadin-grid/vaadin-grid.html">
        -->
      </div>
      <style>
        #details {
          height: 500px;
        }
      </style>
      <link rel="import" href="<%=request.getContextPath()%>/details-row.html">

      <vaadin-grid id="details">
        <table>
          <colgroup>
            <col name="user.name.first"/>
            <col name="user.name.last"/>
            <col name="user.email"/>
          </colgroup>
        </table>
      </vaadin-grid>

      <script>
        (function() {
          HTMLImports.whenReady(function() {
            var grid = document.querySelector('#details');

            getJSON('<%=request.getContextPath()%>/users.json', function(result) {
              grid.items = result;
            });

            grid.rowDetailsGenerator = function(index) {
              var detailsRow = document.createElement('details-row');
              grid.getItem(index, function(err, item) {
                if (!err) {
                  detailsRow.user = item.user;
                }
              });
              return detailsRow;
            };

            var detailsOpenIndex = -1;

            grid.addEventListener('selected-items-changed', function() {
              grid.setRowDetailsVisible(detailsOpenIndex, false);
              var selected = grid.selection.selected();
              if (selected.length === 1) {
                grid.setRowDetailsVisible(selected[0], true);
                detailsOpenIndex = selected[0];
              }
            });

          });
        })();
      </script>

    </view-source>
  --%>
</div>
<!-- Demo section end -->