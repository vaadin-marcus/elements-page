import {Component} from '@angular/core';

@Component({
    selector: 'my-icons-simple-component',
    template: `
    <p>
      <iron-icon icon="vaadin-icons:arrow-forward"></iron-icon>
      Vaadin icons can be used anywhere iron-icons can be used in Polymer apps.
    </p>
    <p>For instance, in
      <paper-button raised>
        <iron-icon icon="vaadin-icons:check"></iron-icon>
        Buttons
      </paper-button>
    </p>
  `
})
export class MyIconsSimpleComponent { }
