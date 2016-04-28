import {Component} from 'angular2/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-column-chart-stacked-component',
  template: `
  <vaadin-column-chart class="chart">
  <chart-title>Total fruit consumption, grouped by gender</chart-title>
  <x-axis>
    <categories>Apples, Oranges, Pears, Grapes, Bananas</categories>
  </x-axis>
  <y-axis allow-decimals="false" min="0">
    <title>Number of fruits</title>
  </y-axis>
  <tooltip point-format="{series.name}: {point.y}. Total: {point.stackTotal}"></tooltip>
  <plot-options>
    <column stacking="normal">
    </column>
  </plot-options>
  <data-series name="John">
    <stack>male</stack>
    <data>5, 3, 4, 7, 2</data>
  </data-series>
  <data-series name="Joe">
    <stack>male</stack>
    <data>3, 4, 4, 2, 5</data>
  </data-series>
  <data-series name="Jane">
    <stack>female</stack>
    <data>2, 5, 6, 2, 1</data>
  </data-series>
  <data-series name="Janet">
    <stack>female</stack>
    <data>3, 0, 4, 4, 3</data>
  </data-series>
</vaadin-column-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MyColumnChartStackedComponent {

}
