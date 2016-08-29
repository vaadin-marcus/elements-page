import { Component } from '@angular/core';
import { PolymerElement } from '@vaadin/angular2-polymer';

@Component({
    selector: 'simple-split-layout-component',
    template: `
    <vaadin-split-layout id="simple">
      <div id="demo-nav">
        <paper-item focused>Inbox</paper-item>
        <paper-item>Important</paper-item>
        <paper-item>Spam</paper-item>
      </div>
      <div id="demo-content" *ngFor="let email of emails">
          <paper-card heading="From: {{email.from}}" image="" elevation="1"
                      animated-shadow="false">
            <div class="card-content">
              <b>{{email.subject}}</b>
              <p>{{email.content}}</p>
            </div>
          </paper-card>
      </div>
    </vaadin-split-layout>
  `,
    directives: [ PolymerElement('vaadin-split-layout'), PolymerElement('paper-card') ],
    styles: [`
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
  `]
})
export class SimpleSplitLayoutComponent {
    emails = [];
}
