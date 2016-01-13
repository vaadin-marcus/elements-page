<%@ page import="com.vaadin.elements.Releases" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import" href="<%=request.getContextPath()%>/bower_components/vaadin-icons/vaadin-icons.html">
<link rel="import" href="<%=request.getContextPath()%>/bower_components/paper-button/paper-button.html">
<link rel="import" href="<%=request.getContextPath()%>/bower_components/vaadin-grid/vaadin-grid.html">
<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
    <div class="w-wallpaper"></div>
    <div class="elements-hero-title row-fluid">
        <div class="span9"><h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5></div>
        <div class="span3"><span class="polymer-tag">Built with Polymer</span></div>
    </div>
    <h1 class="helvetica-light">&lt;vaadin-grid&gt; <span><%=Releases.getLatestVersionNumber("vaadin-grid")%></span></h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
    <div class="w-wallpaper"></div>
    <div class="row-fluid">
        <div class="span7">
            <p class="lead helvetica-light">Vaadin Grid is a fully featured datagrid for showing table data. It performs great even with huge data sets, fully supporting paging and lazy loading from any data source like a REST API. Grid allows you sort and filter data and customize how each cell gets rendered.</p>
        </div>
        <div class="span5">
            <div class="elements-install">
                <h4>Install</h4>
                <code>bower install --save vaadin-grid</code>
            </div>
            <a href="#" class="w-arrow-button blue small">Show documentation</a>
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
                <li>Big data &ndash; Easily present and scroll through 100k lines of data in a single UI component</li>
                <li>Custom headers &ndash; Combine multiple rows and display components in your grid headers</li>
                <li>Smooth scrolling &ndash; Lightning fast and smooth hardware accelerated scrolling by reusing DOM elements</li>
                <li>Super efficient &ndash; Super efficient custom renderers for presenting custom data any way you need to</li>
                <li>Expanding row details</li>
            </ul>
        </div>
        <div class="span6">
            <ul>
                <li>Touch event and mobile support, and keyboard navigation</li>
                <li>Can be used with any JavaScript library or framework that supports Web Components</li>
                <li>Built on top of Google’s Polymer</li>
                <li>Material Design inspired styles</li>
                <li>Customize the theme of the data grid to match the rest of your application</li>
                <li>Free to use under Apache License 2.0</li>
            </ul>
        </div>
    </div>
</div>

<!-- Info section end -->

<!-- Demo section start -->
<a name="demo"></a>
<div class="elements-section">

    <view-source demo-name="Basic use">
        <div class="head">
            <!--
            <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
            <link rel="import"
                  href="https://cdn.vaadin.com/vaadin-core-elements/latest/vaadin-grid/vaadin-grid.html">
            -->
        </div>
        <vaadin-grid selection-mode="multi" id="basic-grid" visible-rows="5">
            <table>
                <colgroup>
                    <col name="index" width="60"/>
                    <col name="user.picture.thumbnail" width="100"/>
                    <col name="user.name.first"/>
                    <col name="user.name.last"/>
                    <col name="user.email" />
                </colgroup>
                <thead>
                <tr>
                    <th>#</th>
                    <th>Pic</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                </tr>
                </thead>
            </table>
        </vaadin-grid>

        <script>
            var grid = grid || document.querySelector('#basic-grid');

            HTMLImports.whenReady(function() {
                grid.size = 1000;
                grid.items = function(params, callback) {
                    // Fetch the JSON data from a URL
                    var xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function() {
                        if (xhr.readyState === XMLHttpRequest.DONE) {
                            if (xhr.status === 200) {
                                var json = JSON.parse(xhr.responseText);
                                callback(json.results);
                            }
                        }
                    };
                    var rowsNeeded = Math.max(params.count, 1);
                    xhr.open('GET', 'https://randomuser.me/api/?results=' + rowsNeeded, true);
                    xhr.send();
                };

                // Add a renderer for the index column
                grid.columns[0].renderer = function(cell) {
                    cell.element.innerHTML = cell.row.index;
                };

                // Add a renderer for the picture column
                grid.columns[1].renderer = function(cell) {
                    cell.element.innerHTML = '';
                    var img = document.createElement('img');
                    img.style.width = '24px';
                    img.setAttribute('src', cell.data);
                    cell.element.appendChild(img);
                };
            });
        </script>
    </view-source>
    <a name="source"></a>
</div>
<!-- Demo section end -->