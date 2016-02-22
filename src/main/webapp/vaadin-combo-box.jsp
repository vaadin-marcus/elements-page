<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Combo Box, filterable select for Polymer | Vaadin Elements", request);%>

<!-- Imports -->

<jsp:include page="imports.jsp"/>


<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title row-fluid">
    <div class="span9"><h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>
    <div class="span3 hidden-phone"><a href="https://www.polymer-project.org" class="polymer-tag">Built
      with Polymer</a></div>
  </div>
  <h1 class="helvetica-light">&lt;vaadin-combo-box&gt;
    <span><%=Releases.getLatestVersionNumber("vaadin-combo-box", "1.0.0-alpha5")%></span></h1>
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
      <div class="elements-install">
        <h4>Install</h4>
        <code>bower install --save vaadin-combo-box</code>
      </div>
      <a href="https://cdn.vaadin.com/vaadin-elements/master/vaadin-combo-box/" class="w-arrow-button blue small">Show
        documentation</a>
      <a href="https://github.com/vaadin/vaadin-combo-box" class="w-arrow-button github small">View
        on GitHub</a>
    </div>
  </div>
</div>


<!-- Intro section start -->

<!-- Info section start -->
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

<!-- Info section end -->

<%--A small part of me died writing this--%>
<% List<GitHubRelease> latestReleases = Releases.getLatestReleases("vaadin-combo-box");
  if (latestReleases != null && !latestReleases.isEmpty()) {
%>
<div class="elements-section">
  <h4>Latest releases</h4>
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
<a name="demo"></a>
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
  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-core-elements/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import"
            href="https://cdn.vaadin.com/vaadin-core-elements/master/vaadin-combo-box/vaadin-combo-box.html">
      -->
    </div>
    <template is="dom-bind" id="demo">
      <div class="fieldset">
        <vaadin-combo-box label="Language" class="languages"
                          items="[[languages]]"></vaadin-combo-box>
        <vaadin-combo-box label="Skill level" class="skillLevels"
                          items="[[skillLevels]]"></vaadin-combo-box>
      </div>
    </template>

    <style>
      .fieldset {
        max-width: 800px;
        margin: 0 auto 20px;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
      }

      /* Responsive styling */
      @media all and (min-width: 600px) {

        .fieldset {
          -webkit-box-orient: horizontal;
          -webkit-box-direction: normal;
          -webkit-flex-direction: row;
          -ms-flex-direction: row;
          flex-direction: row;
          -webkit-box-pack: justify;
          -webkit-justify-content: space-between;
          -ms-flex-pack: justify;
          justify-content: space-between;
        }

        .fieldset vaadin-combo-box {
          -webkit-flex-basis: 40%;
          -ms-flex-preferred-size: 40%;
          flex-basis: 40%;
        }
      }
    </style>

    <script>
      var demo = document.querySelector('#demo');
      demo.addEventListener('dom-change', function() {

        demo.languages = [
          'Afrikaans',
          'Albanian',
          'Amharic',
          'Arabic',
          'Armenian',
          'Basque',
          'Bengali',
          'Byelorussian',
          'Burmese',
          'Bulgarian',
          'Catalan',
          'Czech',
          'Chinese',
          'Croatian',
          'Danish',
          'Dari',
          'Dzongkha',
          'Dutch',
          'English',
          'Esperanto',
          'Estonian',
          'Faroese',
          'Farsi',
          'Finnish',
          'French',
          'Gaelic',
          'Galician',
          'German',
          'Greek',
          'Hebrew',
          'Hindi',
          'Hungarian',
          'Icelandic',
          'Indonesian',
          'Inuktitut (Eskimo)',
          'Italian',
          'Japanese',
          'Khmer',
          'Korean',
          'Kurdish',
          'Laotian',
          'Latvian',
          'Lappish',
          'Lithuanian',
          'Macedonian',
          'Malay',
          'Maltese',
          'Nepali',
          'Norwegian',
          'Pashto',
          'Polish',
          'Portuguese',
          'Romanian',
          'Russian',
          'Scots',
          'Serbian',
          'Slovak',
          'Slovenian',
          'Somali',
          'Spanish',
          'Swedish',
          'Swahili',
          'Tagalog-Filipino',
          'Tajik',
          'Tamil',
          'Thai',
          'Tibetan',
          'Tigrinya',
          'Tongan',
          'Turkish',
          'Turkmen',
          'Ucrainian',
          'Urdu',
          'Uzbek',
          'Vietnamese',
          'Welsh'
        ];

        demo.skillLevels = [
          'Beginner',
          'Intermediate',
          'Advanced',
          'Professional',
          'Native'
        ];
      });
    </script>
  </view-source>

  <h5>Submitting combo-box value through a form</h5>
  vaadin-combo-box can be used like any other input in a form. It's selected value will be
  serialized as the input value.
  <view-source>
    <div class="head">
      <!--
      <script src="https://cdn.vaadin.com/vaadin-core-elements/latest/webcomponentsjs/webcomponents-lite.min.js"></script>
      <link rel="import"
            href="https://cdn.vaadin.com/vaadin-core-elements/master/vaadin-combo-box/vaadin-combo-box.html">
      -->
    </div>
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

      HTMLImports.whenReady(function() {

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

  </view-source>
</div>

<jsp:include page="suggestion-box.jsp"/>
<!-- Demo section end -->