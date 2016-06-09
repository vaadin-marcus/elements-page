import {Component} from '@angular/core';
import { PolymerElement } from '@vaadin/angular2-polymer';

@Component({
    selector: 'my-upload-simple-component',
    template: `
      <vaadin-upload></vaadin-upload>
    `,
    directives: [ PolymerElement('vaadin-upload') ]
})
export class MyUploadSimpleComponent { }
