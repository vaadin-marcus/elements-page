import {Component} from 'angular2/core';
import {VaadinUpload} from '../../../bower_components/vaadin-upload/directives/vaadin-upload';

@Component({
    selector: 'my-upload-simple-component',
    template: `
    <vaadin-upload></vaadin-upload>
  `,
    directives: [VaadinUpload]
})
export class MyUploadSimpleComponent { }
