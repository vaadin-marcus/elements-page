import {Component, OnInit} from 'angular2/core';
import {Http, HTTP_PROVIDERS, Response} from 'angular2/http';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-ohlc-chart-basic-component',
  template: `
  <vaadin-ohlc-chart id="ohlc-series" timeline>
        <chart-title>AAPL Stock Price</chart-title>
        <range-selector selected="2">
        </range-selector>
        <data-series name="AAPL" [data]="seriesData">
          <tooltip value-decimals="2">
          </tooltip>
          <data-grouping>
            <units>
              <name>week</name>
              <multiples>[3]</multiples>
            </units>
            <units>
              <name>month</name>
              <multiples>[1, 2, 3, 4, 6]</multiples>
            </units>
          </data-grouping>
        </data-series>
      </vaadin-ohlc-chart>
  `,
  directives: [VaadinCharts, DataSeries],
  providers: [HTTP_PROVIDERS]
})

export class MyOhlcChartBasicComponent implements OnInit {
  seriesData = [];

  constructor(private http: Http) {}

  ngOnInit() {
    this.setSeriesData();
  }

  setSeriesData() {
    this.http.get('/app/charts/data/ohlc_data.json')
      .map((res: Response) => res.json())
      .subscribe((data) => {
        this.seriesData = data;
      }
    );
  }
}
