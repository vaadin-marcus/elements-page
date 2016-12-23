<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ page import="com.vaadin.elements.GitHubDemo" %>
<%@ page import="com.vaadin.elements.Demos" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Material design combo box, filtering select for Polymer and Angular 2 | Vaadin Elements", request);%>

<!-- Imports -->

<jsp:include page="imports.jsp"/>


<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title row-fluid">
    <div class="span9"><h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>
    <div class="span3 hidden-phone">
      <a href="https://www.polymer-project.org"
         class="polymer-tag polymer-tag-white polymer-tag-inline">Based on Polymer</a>
    </div>
  </div>
  <h1 class="helvetica-light">&lt;vaadin-combo-box&gt;</h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">
        Vaadin ComboBox is a filterable select element for
        situations where you have more than a few dozen item to select from. It provides an optimal
        user experience for all your
        users regardless of if they are on desktop or mobile.
      </p>
    </div>
    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-combo-box</code>
      </div>
      <div class="releases">
        <%
          GitHubRelease latestStableRelease = Releases.getLatestStableRelease("vaadin-combo-box");
          if (latestStableRelease != null) {
        %>
        <div class="release stable">
          <div class="release-type">Stable</div>
          <div class="version"><%=latestStableRelease.tagName%>
          </div>
          <a href="<%=latestStableRelease.htmlUrl%>" class="release-notes">Release notes</a>
        </div>
        <%}%>
        <%
          GitHubRelease latestPreRelase = Releases.getLatestPreRelease("vaadin-combo-box");
          if (latestPreRelase != null) {
        %>
        <div class="release pre">
          <div class="release-type">Pre-release</div>
          <div class="version"><%=latestPreRelase.tagName%>
          </div>
          <a href="<%=latestPreRelase.htmlUrl%>" class="">Release notes</a>
        </div>
        <%}%>
      </div>
      <a href="https://vaadin.com/docs/-/part/elements/vaadin-combo-box/vaadin-combo-box-overview.html"
         class="w-button blue">Documentation</a>
      <a href="https://github.com/vaadin/vaadin-combo-box"
         class="w-button blue github">View on GitHub</a>
    </div>
  </div>
</div>


<!-- Intro section end -->

<!-- Info section start -->
<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-section">
    <h4>Features</h4>
    <div class="row-fluid">
      <div class="span6">
        <ul>
          <li>
            A filterable select element for situations when you have more than a few dozens
            of items to select from.
          </li>
          <li>Keyboard navigation</li>
          <li>Compatible with <a href="https://elements.polymer-project.org/elements/iron-form">iron-form</a>
          </li>
        </ul>
      </div>
      <div class="span6">
        <ul>
          <li>
            Works great on mobile and desktop
          </li>
          <li>
            Material Design inspired styles to fit in with <a
              href="https://elements.polymer-project.org/browse?package=paper-elements">Paper
            Elements</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<jsp:include page="get-help.jsp"/>

<template is="dom-bind" id="dynamicDataTemplate">
  <style is="custom-style">
    .flex-horizontal {
      @apply(--layout-horizontal);
    }
    .flexchild {
      @apply(--layout-flex);
    }
    iron-selector > * {
      padding: 20px;
      font-size: 1.2em;
      text-transform: uppercase;
      cursor: pointer;
    }
    #nav_selector > .iron-selected {
      background-color: #000000;
      color: #ffffff;
    }
    .navigation {
      border-right: 1px solid rgba(0, 0, 0, 0.18);
    }
    .releases-list, .demos-list {
      padding: 20px;
    }
    .release-heading, .markdown-html a {
      color: #4078c0;
      text-decoration: none;
    }
    .release-heading:hover, .markdown-html a:hover {
      text-decoration: underline;
    }
    .markdown-html {
      padding-bottom: 24px;
    }

    code {
      background: rgba(0,0,0,0.04);
  	  font-size: 85%;
  	  padding: 0;
  	  padding-top: 0.2em;
  	  padding-bottom: 0.2em;
      border-radius: 3px;
    }
    pre {
      background: rgba(0,0,0,0.04);
      padding: 16px;
    }
    pre code {
      background: none;
    }
    .lang-html {

    }
    .avatar {
      display: inline-block;
      overflow: hidden;
      line-height: 1;
      vertical-align: middle;
      border-radius: 3px;
    }
    .release-authorship {
      color: #767676;
    }
    .release-authorship > a {
      color: #666;
      font-weight: bold;
      text-decoration: none;
    }
    .release-authorship > a:hover {
      text-decoration: underline;
    }

  </style>
  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">
      <div class="container flex-horizontal">
        <div class="navigation">
          <iron-selector attr-for-selected="name" selected="{{selectedNavItem}}" id="nav_selector">
            <div name="demo">Demo</div>
            <div name="docs">Documentation</div>
            <div name="releases">Releases</div>
          </iron-selector>
        </div>
        <div class="flexchild">
          <iron-pages attr-for-selected="data-nav" selected="{{selectedNavItem}}">
            <div data-nav="demo" id="demo_content" class="demos-list">
              <!--<h3>Configuring the Combo Box</h3>

              <demo-snippet>
                <template>
                  <vaadin-combo-box id='demo1' label="Element"></vaadin-combo-box>
                  <script>
                    var combobox = document.querySelector('#demo1');
                    // The elements is an array of String values.
                    combobox.items = elements;
                  </script>
                </template>
              </demo-snippet>

              <h3>Selecting a Value</h3>
              <demo-snippet>
                <template>
                  <vaadin-combo-box id="demo2" label="Element"></vaadin-combo-box>
                  <p>Selected value: <span id="selected-value"></span>.</p>

                  <script>
                    var combobox2 = document.querySelector('#demo2');
                    combobox2.items = elements;
                    combobox2.addEventListener('value-changed', function() {
                      document.querySelector('#selected-value').innerHTML = combobox2.value;
                    });
                    combobox2.value = 'Carbon';
                  </script>
                </template>
              </demo-snippet>

              <h3>Using as a Form Field</h3>
              <demo-snippet>
                <template>
                  <form is="iron-form" method="post" demo>
                    <vaadin-combo-box name='name' required label="Element"></vaadin-combo-box>
                    <button>Submit</button>
                  </form>

                  <script>
                    var form = document.querySelector('form');
                    var combobox3 = form.querySelector('vaadin-combo-box');
                    combobox3.items = elements;
                    form.addEventListener('iron-form-submit', function() {
                      alert('Form submitted with name: ' + form.serialize().name);
                      return false;
                    });
                  </script>
                </template>
              </demo-snippet>-->
              <vaadin-combo-box-demo></vaadin-combo-box-demo>
            </div>
            <div data-nav="docs">
              <vaadin-component-page src="bower_components/vaadin-combo-box/vaadin-combo-box.html"></vaadin-component-page>
            </div>
            <div data-nav="releases" class="releases-list">
              <%
                List releases = Releases.getLatestReleases("vaadin-combo-box");
			          for(int i=0; i < releases.size(); i++){
			        %>
		    	    <h1><a href="#" target="_blank" class="release-heading"><%= ((GitHubRelease)releases.get(i)).name %></a></h1>
		    	    <p class="release-authorship">
		            <img alt="@<%= ((GitHubRelease)releases.get(i)).author.login %>" class="avatar" height="20" src="<%= ((GitHubRelease)releases.get(i)).author.avatarUrl %>" width="20">
		            <a href="<%= ((GitHubRelease)releases.get(i)).author.htmlUrl %>" target="_blank"><%= ((GitHubRelease)releases.get(i)).author.login %></a>
		            released this
		            <%= ((GitHubRelease)releases.get(i)).publishedAt %>
		          </p>
		    	  <marked-element>
				      <div class="markdown-html"></div>
				      <noscript type="text/markdown"><%=((GitHubRelease)releases.get(i)).body%></noscript>
				    </marked-element>
    			  <%
    			    }
    			  %>
          </div>
          </iron-pages>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  document.querySelector('#dynamicDataTemplate').selectedNavItem = 'demo';
</script>

<%
	GitHubDemo firstDemo = Demos.getLatestDemo("vaadin-combo-box");
%>
<%=firstDemo.name%>


<!-- Demo section start
<a name="demo"></a>
<template is="dom-bind">
  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">
      <h4>Examples</h4>
      <style>
        /* Hacks needed for Liferay*/
        vaadin-combo-box input[type='text'],
        vaadin-combo-box input[type='text']:focus,
        vaadin-combo-box input[type='text']:active {
          border: none !important;
          box-shadow: none !important;
          background-color: transparent !important;
          padding: 0;
        }
      </style>

      <h5>Basic functionality</h5>
      vaadin-combo-box comes with styling that matches the Material Design styling of Polymer Paper
      Elements. It supports keyboard navigation and works great on mobile devices.
      <demo-viewer selected="{{selected}}">
        <demo-source name="Polymer"
                     url="<%=request.getContextPath()%>/examples/core/combo-box/basic-polymer.html"></demo-source>
        <demo-source name="Angular 2"
                     url="<%=request.getContextPath()%>/examples/core/combo-box/basic-angular2.ts"></demo-source>

        <template is="dom-bind" id="demo">

          <vaadin-combo-box label="Language" class="languages"
                            items="[[languages]]"></vaadin-combo-box>
          <vaadin-combo-box label="Skill level" class="skillLevels"
                            items="[[skillLevels]]"></vaadin-combo-box>

        </template>

        <style>
          vaadin-combo-box {
            max-width: 300px;
          }

        </style>

        <script>
          window.addEventListener('WebComponentsReady', function() {
            var demo = document.querySelector('#demo');

              demo.languages = [
                'Afrikaans', 'Albanian', 'Amharic', 'Arabic', 'Armenian', 'Basque', 'Bengali',
                'Byelorussian', 'Burmese', 'Bulgarian', 'Catalan', 'Czech', 'Chinese', 'Croatian',
                'Danish', 'Dari', 'Dzongkha', 'Dutch', 'English', 'Esperanto', 'Estonian', 'Faroese',
                'Farsi', 'Finnish', 'French', 'Gaelic', 'Galician', 'German', 'Greek', 'Hebrew',
                'Hindi', 'Hungarian', 'Icelandic', 'Indonesian', 'Inuktitut (Eskimo)', 'Italian',
                'Japanese', 'Khmer', 'Korean', 'Kurdish', 'Laotian', 'Latvian', 'Lappish', 'Lithuanian',
                'Macedonian', 'Malay', 'Maltese', 'Nepali', 'Norwegian', 'Pashto', 'Polish',
                'Portuguese', 'Romanian', 'Russian', 'Scots', 'Serbian', 'Slovak', 'Slovenian',
                'Somali', 'Spanish', 'Swedish', 'Swahili', 'Tagalog-Filipino', 'Tajik', 'Tamil', 'Thai',
                'Tibetan', 'Tigrinya', 'Tongan', 'Turkish', 'Turkmen', 'Ucrainian', 'Urdu', 'Uzbek',
                'Vietnamese', 'Welsh'
              ];

              demo.skillLevels = [
                'Beginner', 'Intermediate', 'Advanced', 'Professional', 'Native'
              ];

          });
        </script>
      </demo-viewer>
    </div>
  </div>

  <div class="elements-section">
    <h5>Submitting combo-box value through a form</h5>
    <p>vaadin-combo-box can be used like any other input in a form. It's selected value will be
      serialized as the input v-alue.</p>
    <demo-viewer selected="{{selected}}">

      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/core/combo-box/form-polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/core/combo-box/form-angular2.ts"></demo-source>

      <style>
        .form-wrapper vaadin-combo-box {
          width: 300px;
        }

        .form-wrapper button {
          margin-top: 20px;
        }
      </style>
      <form is="iron-form" id="example-form" method="post">

        <div class="form-wrapper">
          <vaadin-combo-box name='name' required label="Element"></vaadin-combo-box>
          <button>Submit</button>
        </div>
      </form>
      <script>

        var elements = ['Actinium', 'Aluminium', 'Americium', 'Antimony', 'Argon',
          'Arsenic', 'Astatine', 'Barium', 'Berkelium', 'Beryllium', 'Bismuth',
          'Bohrium', 'Boron', 'Bromine', 'Cadmium', 'Caesium', 'Calcium',
          'Californium', 'Carbon', 'Cerium', 'Chlorine', 'Chromium', 'Cobalt',
          'Copernicium', 'Copper', 'Curium', 'Darmstadtium', 'Dubnium',
          'Dysprosium', 'Einsteinium', 'Erbium', 'Europium', 'Fermium',
          'Flerovium', 'Fluorine', 'Francium', 'Gadolinium', 'Gallium',
          'Germanium', 'Gold', 'Hafnium', 'Hassium', 'Helium', 'Holmium',
          'Hydrogen', 'Indium', 'Iodine', 'Iridium', 'Iron', 'Krypton',
          'Lanthanum', 'Lawrencium', 'Lead', 'Lithium', 'Livermorium', 'Lutetium',
          'Magnesium', 'Manganese', 'Meitnerium', 'Mendelevium', 'Mercury',
          'Molybdenum', 'Neodymium', 'Neon', 'Neptunium', 'Nickel', 'Niobium',
          'Nitrogen', 'Nobelium', 'Osmium', 'Oxygen', 'Palladium', 'Phosphorus',
          'Platinum', 'Plutonium', 'Polonium', 'Potassium', 'Praseodymium',
          'Promethium', 'Protactinium', 'Radium', 'Radon', 'Rhenium', 'Rhodium',
          'Roentgenium', 'Rubidium', 'Ruthenium', 'Rutherfordium', 'Samarium',
          'Scandium', 'Seaborgium', 'Selenium', 'Silicon', 'Silver', 'Sodium',
          'Strontium', 'Sulfur', 'Tantalum', 'Technetium', 'Tellurium', 'Terbium',
          'Thallium', 'Thorium', 'Thulium', 'Tin', 'Titanium', 'Tungsten',
          'Ununoctium', 'Ununpentium', 'Ununseptium', 'Ununtrium', 'Uranium',
          'Vanadium', 'Xenon', 'Ytterbium', 'Yttrium', 'Zinc', 'Zirconium'];

        window.addEventListener('WebComponentsReady', function() {
          var form = document.querySelector('#example-form');
          var combobox = form.querySelector('vaadin-combo-box');
          combobox.items = elements;

          form.addEventListener('iron-form-submit', function(evt) {
            evt.preventDefault();
            alert('Form submitted with name: ' + form.serialize().name);
            return false;
          });
        });
      </script>

    </demo-viewer>
  </div>

  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">
      <h5>Using Objects as items</h5>
      <p>
        Arrays of objects can also be used to provide the data for a vaadin-combo-box. Override the default property paths by defining <code>item-label-path</code> and <code>item-value-path</code>
        properties.
      </p>
      <demo-viewer selected="{{selected}}">

        <demo-source name="Polymer"
                     url="<%=request.getContextPath()%>/examples/core/combo-box/objects-polymer.html"></demo-source>
        <demo-source name="Angular 2"
                     url="<%=request.getContextPath()%>/examples/core/combo-box/objects-angular2.ts"></demo-source>

        <style>
          vaadin-combo-box {
            width: 300px;
          }
        </style>
        <vaadin-combo-box class="elements-box" label="Element" item-label-path="name"
                          item-value-path="symbol"></vaadin-combo-box>
        <p>Selected element name: <span id="element-name"></span>.</p>
        <p>Value: <span id="element-value"></span>.</p>

        <script>
          var elementsJson = [
            {name: 'Hydrogen', symbol: 'H', number: 1},
            {name: 'Helium', symbol: 'He', number: 2},
            {name: 'Lithium', symbol: 'Li', number: 3},
            {name: 'Beryllium', symbol: 'Be', number: 4},
            {name: 'Boron', symbol: 'B', number: 5},
            {name: 'Carbon', symbol: 'C', number: 6},
            {name: 'Nitrogen', symbol: 'N', number: 7},
            {name: 'Oxygen', symbol: 'O', number: 8},
            {name: 'Fluorine', symbol: 'F', number: 9},
            {name: 'Neon', symbol: 'Ne', number: 10},
            {name: 'Sodium', symbol: 'Na', number: 11},
            {name: 'Magnesium', symbol: 'Mg', number: 12},
            {name: 'Aluminum', symbol: 'Al', number: 13},
            {name: 'Silicon', symbol: 'Si', number: 14},
            {name: 'Phosphorus', symbol: 'P', number: 15},
            {name: 'Sulfur', symbol: 'S', number: 16},
            {name: 'Chlorine', symbol: 'Cl', number: 17},
            {name: 'Argon', symbol: 'Ar', number: 18},
            {name: 'Potassium', symbol: 'K', number: 19},
            {name: 'Calcium', symbol: 'Ca', number: 20},
            {name: 'Scandium', symbol: 'Sc', number: 21},
            {name: 'Titanium', symbol: 'Ti', number: 22},
            {name: 'Vanadium', symbol: 'V', number: 23},
            {name: 'Chromium', symbol: 'Cr', number: 24},
            {name: 'Manganese', symbol: 'Mn', number: 25},
            {name: 'Iron', symbol: 'Fe', number: 26},
            {name: 'Cobalt', symbol: 'Co', number: 27},
            {name: 'Nickel', symbol: 'Ni', number: 28},
            {name: 'Copper', symbol: 'Cu', number: 29},
            {name: 'Zinc', symbol: 'Zn', number: 30},
            {name: 'Gallium', symbol: 'Ga', number: 31},
            {name: 'Germanium', symbol: 'Ge', number: 32},
            {name: 'Arsenic', symbol: 'As', number: 33},
            {name: 'Selenium', symbol: 'Se', number: 34},
            {name: 'Bromine', symbol: 'Br', number: 35},
            {name: 'Krypton', symbol: 'Kr', number: 36},
            {name: 'Rubidium', symbol: 'Rb', number: 37},
            {name: 'Strontium', symbol: 'Sr', number: 38},
            {name: 'Yttrium', symbol: 'Y', number: 39},
            {name: 'Zirconium', symbol: 'Zr', number: 40},
            {name: 'Niobium', symbol: 'Nb', number: 41},
            {name: 'Molybdenum', symbol: 'Mo', number: 42},
            {name: 'Technetium', symbol: 'Tc', number: 43},
            {name: 'Ruthenium', symbol: 'Ru', number: 44},
            {name: 'Rhodium', symbol: 'Rh', number: 45},
            {name: 'Palladium', symbol: 'Pd', number: 46},
            {name: 'Silver', symbol: 'Ag', number: 47},
            {name: 'Cadmium', symbol: 'Cd', number: 48},
            {name: 'Indium', symbol: 'In', number: 49},
            {name: 'Tin', symbol: 'Sn', number: 50},
            {name: 'Antimony', symbol: 'Sb', number: 51},
            {name: 'Tellurium', symbol: 'Te', number: 52},
            {name: 'Iodine', symbol: 'I', number: 53},
            {name: 'Xenon', symbol: 'Xe', number: 54},
            {name: 'Cesium', symbol: 'Cs', number: 55},
            {name: 'Barium', symbol: 'Ba', number: 56},
            {name: 'Lanthanum', symbol: 'La', number: 57},
            {name: 'Cerium', symbol: 'Ce', number: 58},
            {name: 'Praseodymium', symbol: 'Pr', number: 59},
            {name: 'Neodymium', symbol: 'Nd', number: 60},
            {name: 'Promethium', symbol: 'Pm', number: 61},
            {name: 'Samarium', symbol: 'Sm', number: 62},
            {name: 'Europium', symbol: 'Eu', number: 63},
            {name: 'Gadolinium', symbol: 'Gd', number: 64},
            {name: 'Terbium', symbol: 'Tb', number: 65},
            {name: 'Dysprosium', symbol: 'Dy', number: 66},
            {name: 'Holmium', symbol: 'Ho', number: 67},
            {name: 'Erbium', symbol: 'Er', number: 68},
            {name: 'Thulium', symbol: 'Tm', number: 69},
            {name: 'Ytterbium', symbol: 'Yb', number: 70},
            {name: 'Lutetium', symbol: 'Lu', number: 71},
            {name: 'Hafnium', symbol: 'Hf', number: 72},
            {name: 'Tantalum', symbol: 'Ta', number: 73},
            {name: 'Tungsten', symbol: 'W', number: 74},
            {name: 'Rhenium', symbol: 'Re', number: 75},
            {name: 'Osmium', symbol: 'Os', number: 76},
            {name: 'Iridium', symbol: 'Ir', number: 77},
            {name: 'Platinum', symbol: 'Pt', number: 78},
            {name: 'Gold', symbol: 'Au', number: 79},
            {name: 'Mercury', symbol: 'Hg', number: 80},
            {name: 'Thallium', symbol: 'Tl', number: 81},
            {name: 'Lead', symbol: 'Pb', number: 82},
            {name: 'Bismuth', symbol: 'Bi', number: 83},
            {name: 'Polonium', symbol: 'Po', number: 84},
            {name: 'Astatine', symbol: 'At', number: 85},
            {name: 'Radon', symbol: 'Rn', number: 86},
            {name: 'Francium', symbol: 'Fr', number: 87},
            {name: 'Radium', symbol: 'Ra', number: 88},
            {name: 'Actinium', symbol: 'Ac', number: 89},
            {name: 'Thorium', symbol: 'Th', number: 90},
            {name: 'Protactinium', symbol: 'Pa', number: 91},
            {name: 'Uranium', symbol: 'U', number: 92},
            {name: 'Neptunium', symbol: 'Np', number: 93},
            {name: 'Plutonium', symbol: 'Pu', number: 94},
            {name: 'Americium', symbol: 'Am', number: 95},
            {name: 'Curium', symbol: 'Cm', number: 96},
            {name: 'Berkelium', symbol: 'Bk', number: 97},
            {name: 'Californium', symbol: 'Cf', number: 98},
            {name: 'Einsteinium', symbol: 'Es', number: 99},
            {name: 'Fermium', symbol: 'Fm', number: 100},
            {name: 'Mendelevium', symbol: 'Md', number: 101},
            {name: 'Nobelium', symbol: 'No', number: 102},
            {name: 'Lawrencium', symbol: 'Lr', number: 103},
            {name: 'Rutherfordium', symbol: 'Rf', number: 104},
            {name: 'Dubnium', symbol: 'Db', number: 105},
            {name: 'Seaborgium', symbol: 'Sg', number: 106},
            {name: 'Bohrium', symbol: 'Bh', number: 107},
            {name: 'Hassium', symbol: 'Hs', number: 108},
            {name: 'Meitnerium', symbol: 'Mt', number: 109},
            {name: 'Ununnilium', symbol: 'Uun', number: 110},
            {name: 'Unununium', symbol: 'Uuu', number: 111},
            {name: 'Ununbium', symbol: 'Uub', number: 112},
            {name: 'Ununtrium', symbol: 'Uut', number: 113},
            {name: 'Ununquadium', symbol: 'Uuq', number: 114},
            {name: 'Ununpentium', symbol: 'Uup', number: 115},
            {name: 'Ununhexium', symbol: 'Uuh', number: 116},
            {name: 'Ununseptium', symbol: 'Uus', number: 117},
            {name: 'Ununoctium', symbol: 'Uuo', number: 118}
          ];

          window.addEventListener('WebComponentsReady', function() {
            var combobox = combobox || document.querySelector('.elements-box');

            // elementsJson is an Array of Objects. Item object format:
            //   {name: 'Hydrogen', symbol: 'H', number: 1}
            combobox.items = elementsJson;

            combobox.addEventListener('selected-item-changed', function() {
              document.querySelector('#element-name').innerHTML = combobox.selectedItem && combobox.selectedItem.name;
            });

            combobox.addEventListener('value-changed', function() {
              document.querySelector('#element-value').innerHTML = combobox.value;
            });

            combobox.value = 'C';
          });


        </script>
      </demo-viewer>
    </div>
  </div>
</template> -->
<!-- Demo section end -->



<jsp:include page="bottom-actions.jsp"/>
