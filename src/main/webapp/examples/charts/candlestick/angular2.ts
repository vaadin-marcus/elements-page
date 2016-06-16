import {Component, OnInit} from '@angular/core';
import {Http, HTTP_PROVIDERS, Response} from '@angular/http';
import { PolymerElement } from '@vaadin/angular2-polymer';

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
  directives: [ PolymerElement('vaadin-candlestick-chart') ]
  providers: [HTTP_PROVIDERS]
})

export class MyCandlestickChartBasicComponent implements OnInit {
  seriesData = [];

  constructor(private http: Http) {}

  ngOnInit() {
    this.setSeriesData();
  }

  setSeriesData() {
    this.http.get('ohlc_data.json')
      .map((res: Response) => res.json())
      .subscribe((data) => {
        this.seriesData = data;
      }
    );
  }
}
