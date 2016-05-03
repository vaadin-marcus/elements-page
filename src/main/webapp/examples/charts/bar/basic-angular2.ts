import {Component} from '@angular/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-bar-chart-basic-component',
  template: `
  <vaadin-bar-chart id="basic-bar">
    <chart-title>Stacked bar chart</chart-title>
    <x-axis>
      <categories>Apples, Oranges, Pears, Grapes, Bananas</categories>
    </x-axis>
    <y-axis min="0">
      <title>Total fruit consumption</title>
    </y-axis>
    <legend reversed="true"></legend>
    <tooltip point-format="{series.name}: {point.y}. Total: {point.stackTotal}"></tooltip>
    <plot-options>
      <series stacking="normal">
      </series>
    </plot-options>
    <data-series name="John">
      <data>5, 3, 4, 7, 2</data>
    </data-series>
    <data-series name="Jane">
      <data>2, 2, 3, 2, 1</data>
    </data-series>
    <data-series name="Joe">
      <data>3, 4, 4, 2, 5</data>
    </data-series>
  </vaadin-bar-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MyBarChartBasicComponent {

}
