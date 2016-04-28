import {Component} from 'angular2/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-area-chart-stacked-area-component',
  template: `
  <vaadin-area-chart id="stacked-area">
    <chart-title>Historic and Estimated Worldwide Population Growth by Region</chart-title>
    <subtitle>Source: Wikipedia.org</subtitle>
    <x-axis tickmark-placement="on">
      <categories>1750, 1800, 1850, 1900, 1950, 1999, 2050</categories>
      <title enabled="false"></title>
    </x-axis>
    <y-axis min="0">
      <title>Billions</title>
      <labels formatter="function () { return this.value / 1000; }"></labels>
    </y-axis>
    <tooltip shared="true" point-format="<span style=&quot;color:{series.color}&quot;>{series.name}</span>: <b>{point.percentage:.1f}%</b> ({point.y:.0f} millions)<br/>"></tooltip>
    <plot-options>
      <series stacking="normal" line-width="1">
      </series>
    </plot-options>
    <data-series name="Asia">
      <data>502, 635, 809, 947, 1402, 3634, 5268</data>
    </data-series>
    <data-series name="Africa">
      <data>106, 107, 111, 133, 221, 767, 1766</data>
    </data-series>
    <data-series name="Europe">
      <data>163, 203, 276, 408, 547, 729, 628</data>
    </data-series>
    <data-series name="America">
      <data>18, 31, 54, 156, 339, 818, 1201</data>
    </data-series>
    <data-series name="Oceania">
      <data>2, 2, 2, 6, 13, 30, 46</data>
    </data-series>
  </vaadin-area-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MyAreaChartStackedAreaComponent {

}
