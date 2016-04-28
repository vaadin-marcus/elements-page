import {Component} from 'angular2/core';
import {VaadinCharts, DataSeries} from '../../../bower_components/vaadin-charts/directives/vaadin-charts';

@Component({
  selector: 'my-scatter-chart-basic-component',
  template: `
  <vaadin-scatter-chart id="basic-3d-scatter">
    <chart-title>Scatterbox</chart-title>

    <chart margin="100">
      <options3d enabled="true" alpha="10" beta="30" depth="250" view-distance="5">
        <frame3d>
          <bottom size="1" color="rgba(0,0,0,0.02)"></bottom>
          <back size="1" color="rgba(0,0,0,0.04)"></back>
          <side size="1" color="rgba(0,0,0,0.06)"></side>
        </frame3d>
      </options3d>
    </chart>

    <plot-options>
      <scatter width="10" height="10" depth="10" color-by-point="true">
      </scatter>
    </plot-options>

    <y-axis min="0" max="10" title="null">
    </y-axis>

    <x-axis min="0" max="10" grid-line-width="1">
    </x-axis>

    <z-axis min="0" max="10" show-first-label="false">
    </z-axis>

    <legend enabled="false"></legend>

    <data-series name="Reading">
      <data>[1, 6, 5], [8, 7, 9], [1, 3, 4], [4, 6, 8], [5, 7, 7], [6, 9, 6], [7, 0, 5], [2, 3,
        3], [3, 9, 8], [3, 6, 5], [4, 9, 4], [2, 3, 3], [6, 9, 9], [0, 7, 0], [7, 7, 9], [7, 2,
        9], [0, 6, 2], [4, 6, 7], [3, 7, 7], [0, 1, 7], [2, 8, 6], [2, 3, 7],
        [6, 4, 8], [3, 5, 9], [7, 9, 5], [3, 1, 7], [4, 4, 2], [3, 6, 2], [3, 1, 6], [6, 8, 5],
        [6, 6, 7], [4, 1, 1], [7, 2, 7], [7, 7, 0], [8, 8, 9], [9, 4, 1], [8, 3, 4], [9, 8, 9],
        [3, 5, 3], [0, 2, 4], [6, 0, 2], [2, 1, 3], [5, 8, 9], [2, 1,
        1], [9, 7, 6], [3, 0, 2], [9, 9, 0], [3, 4, 8], [2, 6, 1], [8, 9, 2], [7, 6, 5], [6, 3,
        1], [9, 3, 1], [8, 9, 3], [9, 1, 0], [3, 8, 7], [8, 0, 0], [4, 9, 7], [8, 6, 2], [4, 3,
        0], [2, 3, 5], [9, 1, 4], [1, 1, 4], [6, 0, 2], [6, 1, 6], [3,
        8, 8], [8, 8, 7], [5, 5, 0], [3, 9, 6], [5, 4, 3], [6, 8, 3], [0, 1, 5], [6, 7, 3], [8, 3,
        2], [3, 8, 3], [2, 1, 6], [4, 6, 7], [8, 9, 9], [5, 4, 2], [6, 1, 3], [6, 9, 5], [4, 8,
        2], [9, 7, 4], [5, 4, 2], [9, 6, 1], [2, 7, 3], [4, 5, 4],
        [6, 8, 1], [3, 4, 0], [2, 2, 6], [5, 1, 2], [9, 9, 7], [6, 9, 9], [8, 4, 3], [4, 1, 7],
        [6, 2, 5], [0, 4, 9], [3, 5, 9], [6, 9, 1], [1, 9, 2]
      </data>
    </data-series>

  </vaadin-scatter-chart>
  `,
  directives: [VaadinCharts, DataSeries]
})

export class MyScatterChartBasicComponent {
}
