import {Component, OnInit} from 'angular2/core';
import {Http, HTTP_PROVIDERS, Response} from 'angular2/http';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

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
  directives: [VaadinCharts, DataSeries],
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
