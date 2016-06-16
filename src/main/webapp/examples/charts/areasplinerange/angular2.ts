import {Component, OnInit} from '@angular/core';
import {Http, HTTP_PROVIDERS, Response} from '@angular/http';
import { PolymerElement } from '@vaadin/angular2-polymer';

@Component({
  selector: 'my-areasplinerange-chart-basic-component',
  template: `
  <vaadin-areasplinerange-chart id="area-range">
    <chart zoom-type="x"></chart>
    <chart-title>Temperature variation by day</chart-title>
    <x-axis type="datetime"></x-axis>
    <y-axis>
      <title text="null"></title>
    </y-axis>
    <tooltip crosshairs="true" shared="true" value-suffix="C"></tooltip>
    <legend enabled="false"></legend>
    <data-series [data]="temperatureData"></data-series>
  </vaadin-areasplinerange-chart>
  `,
  directives: [ PolymerElement('vaadin-areasplinerange-chart') ]
  providers: [HTTP_PROVIDERS]
})

export class MyAreasplinerangeChartBasicComponent implements OnInit {
  temperatureData = [];

  constructor(private http: Http) {}

  ngOnInit() {
    this.setTemperatureData();
  }

  setTemperatureData() {
    this.http.get('temp-variation.json')
      .map((res: Response) => res.json())
      .subscribe((data) => {
        this.temperatureData = data;
      }
    );
  }
}
