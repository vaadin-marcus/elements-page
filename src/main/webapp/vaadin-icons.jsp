<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<%PortalUtil.setPageTitle("530+ free Polymer compatible icons | Vaadin Elements", request);%>

<!-- Imports -->
<jsp:include page="imports.jsp"/>
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/vaadin-icons/vaadin-icons.html">
<link rel="import"
      href="<%=request.getContextPath()%>/bower_components/paper-input/paper-input.html">
<!-- Imports end -->


<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title row-fluid">
    <div class="span9"><h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>
    <div class="span3 hidden-phone"><a href="https://www.polymer-project.org" class="polymer-tag">Built with Polymer</a></div>
  </div>
  <h1 class="helvetica-light">&lt;vaadin-icons&gt; <span>1.0.0-alpha1</span></h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Vaadin-icons contains 530 unique icons designed for web
        applications.</p>
    </div>
    <div class="span5">
      <div class="elements-install">
        <h4>Install</h4>
        <code>bower install --save vaadin-icons</code>
      </div>
      <a href="https://github.com/vaadin/vaadin-icons" class="w-arrow-button blue small">Show documentation</a>
      <a href="https://github.com/vaadin/vaadin-icons" class="w-arrow-button github small">View on GitHub</a>
    </div>
  </div>
</div>


<!-- Intro section start -->


<!-- Demo section start -->
<div class="elements-section">

  <style>
    .aui .vaadin-theme .vaadin-icons-container input:focus {
      border: none!important;
    }
  </style>
  <h4>Examples</h4>
  <view-source demo-name="Demo">
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-components/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import" href="https://cdn.vaadin.com/vaadin-icons/latest/vaadin-icons.html">
      -->
    </div>
    <template is="dom-bind" id="demo">
      <paper-input label="Filter" value="{{query}}" class="icons-filter"></paper-input>
      <!-- Icon sets are registered globally when imported -->
      <iron-meta type="iconset" list="{{iconsets}}"></iron-meta>
      <div class="vaadin-icons-container">
        <template is="dom-repeat" items="{{iconsets}}">
          <template is="dom-repeat" items="{{getIconNames(item)}}" filter="{{filterByName(query)}}">
            <div class="icon">
              <iron-icon icon="[[item]]"></iron-icon>
              <span>{{item}}</span>
            </div>
          </template>
        </template>
      </div>
    </template>
    <style>
      .icon {
        display: inline-block;
        vertical-align: top;
        margin: 24px 8px;
        text-align: center;
        width: 130px;
        cursor: default;
      }

      .icon span {
        font-family: sans-serif;
        font-size: 10px;
        display: block;
        color: #616161;
        -webkit-transition: all 600ms;
        transition: all 600ms;
      }

      .icon:hover span {
        color: #00b4f0;
      }

      iron-icon {
        fill: #616161;
        -webkit-transition: all 200ms;
        transition: all 200ms;
      }

      .icon:hover iron-icon {
        fill: #00b4f0;
      }

      .vaadin-icons-container {
        height: 380px;
        overflow: scroll;
      }

      .icons-filter {
        width: 300px;
        margin: 20px auto;
      }
    </style>

    <script>
      var demo = document.querySelector('#demo');
      demo.getIconNames = function(iconset) {
        return iconset.getIconNames();
      };

      demo.filterByName = function(query) {
        return function(iconName) {
          if (!query) {
            return true;
          }
          if (demo) {
            return iconName.indexOf(query) > 0;
          } else {
            return true;
          }
        };
      };
    </script>
  </view-source>
</div>
