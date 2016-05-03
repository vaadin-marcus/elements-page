import {Component} from '@angular/core';
import {VaadinDatePicker} from '../../../bower_components/vaadin-date-picker/directives/vaadin-date-picker';

@Component({
    selector: 'my-date-picker-simple-component',
    template: `
    <vaadin-date-picker label="Pick a date"></vaadin-date-picker>
    <vaadin-date-picker label="Birthday" [(value)]="birthday"></vaadin-date-picker>
  `,
    directives: [VaadinDatePicker]
})
export class MyDatePickerSimpleComponent {
    birthday = "2000-01-01";
}