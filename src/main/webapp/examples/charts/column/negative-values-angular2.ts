import {Component} from '@angular/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-column-chart-negative-values-component',
  template: `
  <vaadin-column-chart class="chart">
  <chart-title>Column chart with negative values</chart-title>
  <subtitle>Source: WorldClimate.com</subtitle>
  <x-axis>
    <categories>Apples, Oranges, Pears, Grapes, Bananas</categories>
  </x-axis>
  <tooltip point-format="{series.name}: {point.y}"></tooltip>
  <plot-options>
    <column min-point-lenght="3">
    </column>
  </plot-options>
  <data-series name="John">
    <data> 5, 0.1, 4, 7, 2</data>
  </data-series>
  <data-series name="Jane">
    <data>2, -2, -0.1, 2, 1</data>
  </data-series>
  <data-series name="Joe">
    <data>3, 4, 4, -2, 5</data>
  </data-series>
</vaadin-column-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MyColumnChartNegativeValuesComponent {

}
