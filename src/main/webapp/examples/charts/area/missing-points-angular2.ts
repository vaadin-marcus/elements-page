import {Component} from 'angular2/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-area-chart-missing-points-component',
  template: `
  <vaadin-area-chart id="area-with-missing-points">
  <chart-title>Fruit consumption *</chart-title>
  <subtitle floating="true" y="10" align="right" vertical-align="bottom">* Jane's banana
    consumption is unknown
  </subtitle>
  <x-axis>
    <categories>Apples, Pears, Oranges, Bananas, Grapes, Plums, Strawberries,
      Raspberries
    </categories>
  </x-axis>
  <legend layout="vertical" align="left" floating="true" vertical-align="top" x="150" y="100" border-width="1" background-color="#ffffff"></legend>
  <tooltip enabled="true" shared="true">
  </tooltip>
  <data-series name="John">
    <data>0, 1, 4, 4, 5, 2, 3, 7</data>
  </data-series>
  <data-series name="Jane">
    <data>1, 0, 3, null, 3, 1, 2, 1</data>
  </data-series>
</vaadin-area-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MyAreaChartMissingPointsComponent {

}
