import { Component } from '@angular/core';
import { PolymerElement } from '@vaadin/angular2-polymer';

@Component({
    selector: 'nested-split-layout-component',
    template: `
    <vaadin-split-panel id="nested">
      <div id="demo-nav">
        <paper-item focused>Inbox</paper-item>
        <paper-item>Important</paper-item>
        <paper-item>Spam</paper-item>
      </div>
      <vaadin-split-panel id="demo-content" vertical>
        <vaadin-grid id="grid" [items]="emails" (selected-items-changed)="showEmail($event)"
                     frozen-columns="1" visible-rows="4">
          <table>
            <colgroup>
              <col name="from" width="150">
              <col name="subject">
            </colgroup>
          </table>
        </vaadin-grid>
        <div id="email">
          <h2>{{selectedEmail.from]]}}</h2>
          <p><b>{{selectedEmail.subject}}</b></p>
          <p>{{selectedEmail.content}}</p>
        </div>
      </vaadin-split-panel>
    </vaadin-split-panel>
  `,
    directives: [ PolymerElement('vaadin-split-layout'), PolymerElement('vaadin-grid') ],
    styles: [`
    #demo-nav {
        width: 25%
      }

      #demo-content {
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
  `]
})
export class NestedSplitLayoutComponent {
    emails = [];
    selectedEmail = {};

    showEmail(event: any){
        let grid = event.target;
        let selection = grid.selection.selected();

        if (selection && !isNaN(selection[0])) {
            this.selectedEmail = grid.items[selection[0]];
        }
    }
}
