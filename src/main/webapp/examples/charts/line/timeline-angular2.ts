import {Component, OnInit} from '@angular/core';
import {Http, HTTP_PROVIDERS, Response} from '@angular/http';
import { PolymerElement } from '@vaadin/angular2-polymer';

@Component({
  selector: 'my-line-chart-timeline-component',
  template: `
  <vaadin-line-chart id="single-line-series" timeline>
    <chart-title>AAPL Stock Price</chart-title>
    <range-selector selected="1">
    </range-selector>
    <data-series name="AAPL" [data]="seriesData">
      <tooltip value-decimals="2">
      </tooltip>
    </data-series>
  </vaadin-line-chart>
  `,
  directives: [ PolymerElement('vaadin-line-chart') ]
  providers: [HTTP_PROVIDERS]
})

export class MyLineChartTimelineComponent implements OnInit {
  seriesData = [];

  constructor(private http: Http) {}

  ngOnInit() {
    this.setSeriesData();
  }

  setSeriesData() {
    this.http.get('aaplData.json')
      .map((res: Response) => res.json())
      .subscribe((data) => {
        this.seriesData = data;
      }
    );
  }
}
