<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Resizeable split layout for Polymer and Angular 2 | Vaadin Elements", request);%>

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
  <h1 class="helvetica-light">&lt;vaadin-split-layout&gt;</h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">
        Split Panel is a layout component that allows you to partition an area into resizeable
        areas.
      </p>
    </div>
    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-split-layout</code>
      </div>
      <div class="releases">
        <%
          GitHubRelease latestStableRelease = Releases.getLatestStableRelease("vaadin-split-layout");
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
          GitHubRelease latestPreRelase = Releases.getLatestPreRelease("vaadin-split-layout");
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
      <%--<a href="https://vaadin.com/docs/-/part/elements/vaadin-split-layout/vaadin-split-layout-overview.html"--%>
      <%--class="w-button blue">Documentation</a>--%>
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
            Allows users to resize layouts
          </li>
          <li>Horizontal and vertical splitting</li>
          <li>Easy CSS sizing</li>
        </ul>
      </div>
      <div class="span6">
        <ul>
          <li>
            Nestable
          </li>
          <li>Enhanced touch areas for easy use on mobile devices</li>
        </ul>
      </div>
    </div>
  </div>
</div>

<jsp:include page="get-help.jsp"/>

<!-- Demo section start -->
<template is="dom-bind" id="demo-template">

  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">
      <h4>Examples</h4>

      <h5>Basic functionality</h5>
      In its simplest form, a vaadin-split-layout will insert a resizable slider between its
      children.

      <demo-viewer selected="{{selected}}">
        <demo-source name="Polymer"
                     url="<%=request.getContextPath()%>/examples/core/combo-box/basic-polymer.html"></demo-source>
        <demo-source name="Angular 2"
                     url="<%=request.getContextPath()%>/examples/core/combo-box/basic-angular2.ts"></demo-source>

        <dom-module id="simple-split-layout">
          <template>
            <style>
              :host {
                display: block;
              }

              #demo-nav {
                width: 25%;
              }

              #demo-content {
                width: 75%;
                padding: 12px;
                box-sizing: border-box;
              }

              #demo-content paper-card {
                margin-bottom: 12px;
              }

              #simple {
                height: 400px;
                border: 1px solid #ddd;
                margin: 20px 0;
                background: #fff;
              }

            </style>
            <vaadin-split-panel id="simple">
              <div id="demo-nav">
                <paper-item focused>Inbox</paper-item>
                <paper-item>Important</paper-item>
                <paper-item>Spam</paper-item>
              </div>
              <div id="demo-content">
                <template is="dom-repeat" items="[[emails]]">
                  <paper-card heading="From: [[item.from]]" image="" elevation="1"
                              animated-shadow="false">
                    <div class="card-content">
                      <b>[[item.subject]]</b>
                      <p>[[item.content]]</p>
                    </div>
                  </paper-card>
                </template>
              </div>
            </vaadin-split-panel>
          </template>
          <script>
            Polymer({
              is: 'simple-split-layout',
              properties: {
                emails: Array
              }
            });
          </script>
        </dom-module>
        <simple-split-layout emails="[[emails]]"></simple-split-layout>
      </demo-viewer>
    </div>
  </div>

  <div class="elements-section">
    <h5>Nested split panels</h5>
    <p>vaadin-split-layout may also be nested to create more complex configurable layouts.</p>
    <demo-viewer selected="{{selected}}">
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/core/combo-box/basic-polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/core/combo-box/basic-angular2.ts"></demo-source>
      <dom-module id="nested-split-layout">
        <template>
          <style>
            :host {
              display: block;
            }

            #nav {
              width: 25%
            }

            #content {
              width: 75%;
            }

            #grid {
            }

            #email {
              box-sizing: border-box;
              padding: 12px;
            }

            #nested {
              height: 500px;
              border: 1px solid #ddd;
              margin: 20px 0;
            }
          </style>
          <vaadin-split-panel id="nested">
            <div id="nav">
              <paper-item focused>Inbox</paper-item>
              <paper-item>Important</paper-item>
              <paper-item>Spam</paper-item>
            </div>
            <vaadin-split-panel id="content" vertical>
              <vaadin-grid id="grid" items="[[emails]]" on-selected-items-changed="_showEmail"
                           frozen-columns="1" visible-rows="4">
                <table>
                  <colgroup>
                    <col name="from" width="150">
                    <col name="subject">
                  </colgroup>
                </table>
              </vaadin-grid>
              <div id="email">
                <h2>[[selectedEmail.from]]</h2>
                <p><b>[[selectedEmail.subject]]</b></p>
                <p>[[selectedEmail.content]]</p>
              </div>
            </vaadin-split-panel>
          </vaadin-split-panel>
        </template>
        <script>
          Polymer({
            is: 'nested-split-layout',
            properties: {
              emails: Array,
              selectedEmail: Object
            },
            _showEmail: function() {
              var grid = this.$.grid;
              var selection = grid.selection.selected();

              if (selection && !isNaN(selection[0])) {
                this.selectedEmail = grid.items[selection[0]];
              }
            }
          });
        </script>
      </dom-module>
      <nested-split-layout emails="[[emails]]"></nested-split-layout>
    </demo-viewer>
  </div>


  <script>
    document.addEventListener('WebComponentsReady', function() {
      var demo = document.querySelector('#demo-template');
      demo.emails = [
        {
          from: 'Boss',
          subject: 'Bring to the table win-win survival strategies to ensure proactive domination',
          content: 'Capitalise on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.'
        },
        {
          from: 'Boss',
          subject: ' User generated content in real-time will have multiple touchpoints for offshoring',
          content: 'Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.'
        },
        {
          from: 'Boss',
          subject: 'Podcasting operational change management',
          content: 'Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on cross-platform integration.'
        },
        {
          from: 'Boss',
          subject: 'A new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution',
          content: 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.'
        },
        {
          from: 'Boss',
          subject: 'Efficiently unleash cross-media information without cross-media value',
          content: 'Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service.'
        },
        {
          from: 'Boss',
          subject: 'Dramatically maintain clicks-and-mortar solutions without functional solutions',
          content: 'Objectively innovate empowered manufactured products whereas parallel platforms. Holisticly predominate extensible testing procedures for reliable supply chains. Dramatically engage top-line web services vis-a-vis cutting-edge deliverables.'
        }
      ];
    });
  </script>
</template>
<!-- Demo section end -->


<jsp:include page="bottom-actions.jsp"/>
