<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<!-- Imports -->

<jsp:include page="imports.jsp"/>
<link rel="import" href="<%=request.getContextPath()%>/bower_components/vaadin-combo-box/vaadin-combo-box.html">
<link rel="import" href="<%=request.getContextPath()%>/bower_components/iron-ajax/iron-ajax.html">

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title row-fluid">
    <div class="span9"><h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>
    <div class="span3"><span class="polymer-tag">Built with Polymer</span></div>
  </div>
  <h1 class="helvetica-light">&lt;vaadin-combo-box&gt; <span>0.1</span></h1>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">
        Vaadin ComboBox is a filterable select element for
        situations where you have more than a few dozen item to select from. It adapts to
        small screens like smartphones to provide an optimal user experience for all your
        users.
      </p>
    </div>
    <div class="span5">
      <div class="elements-install">
        <h4>Install</h4>
        <code>bower install --save vaadin-combo-box</code>
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
        <li>
          A filterable select element for situations when you have more than a few dozens
          of items to select from.
        </li>
        <li>
          Automatic support for small screens (i.e. smartphones), the layout/UI adapts to
          provide the best experience for the user.
        </li>
      </ul>
    </div>
  </div>
</div>

<!-- Info section end -->
<!-- Demo section start -->
<a name="demo"></a>
<div class="elements-section">
  <h4>Demo</h4>
  <view-source head="#stuff-for-head" json="countries.json">
    <template is="dom-bind" id="demo">
      <iron-ajax auto url="<%=request.getContextPath()%>/countries.json" handle-as="json"
                 last-response="{{countries}}"></iron-ajax>
      <vaadin-combo-box label="Select a country" id="selector" items={{countries}}
                        value="{{country}}"></vaadin-combo-box>

      <p>
        You have selected:
        <span>{{country}}</span>
      </p>
    </template>

    <style>
      #selector {
        max-width: 300px;
      }

      /* Fixes needed for Liferay*/
      #selector input[type='text'],
      #selector input[type='text']:focus,
      #selector input[type='text']:active {
        border: none !important;
        box-shadow: none !important;
        background-color: transparent !important;
      }
    </style>

    <script>
    </script>
  </view-source>
  <a name="source"></a>
</div>
<!-- Demo section end -->