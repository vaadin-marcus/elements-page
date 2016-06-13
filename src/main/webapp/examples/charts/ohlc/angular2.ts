import {Component, OnInit} from '@angular/core';
import {Http, HTTP_PROVIDERS, Response} from '@angular/http';
import { PolymerElement } from '@vaadin/angular2-polymer';

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
  directives: [ PolymerElement('vaadin-ohlc-chart') ]
  providers: [HTTP_PROVIDERS]
})

export class MyOhlcChartBasicComponent implements OnInit {
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
