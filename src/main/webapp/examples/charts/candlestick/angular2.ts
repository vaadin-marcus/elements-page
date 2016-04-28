import {Component, OnInit} from 'angular2/core';
import {Http, HTTP_PROVIDERS, Response} from 'angular2/http';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-candlestick-chart-basic-component',
  template: `
  <vaadin-candlestick-chart id="candlestick-series" timeline>
      <chart-title>AAPL Stock Price</chart-title>
      <range-selector selected="1">
      </range-selector>
      <data-series name="AAPL Stock Price" [data]="seriesData">
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
    </vaadin-candlestick-chart>
  `,
  directives: [VaadinCharts, DataSeries],
  providers: [HTTP_PROVIDERS]
})

export class MyCandlestickChartBasicComponent implements OnInit {
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
