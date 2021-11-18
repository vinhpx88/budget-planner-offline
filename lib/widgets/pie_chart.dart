
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

import '../helpers/helper.dart';

class PieOutsideLabelChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
  final bool animate;
  final charts.Color textColor;

  PieOutsideLabelChart(this.seriesList, this.textColor, {this.animate = true});

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList,
        animate: animate,
        defaultRenderer: new charts.ArcRendererConfig(
            arcWidth: 10,
            // arcRatio: 0.3,
            // arcLength: 3.14,
            startAngle: -3.14,
            arcRendererDecorators: [
          new charts.ArcLabelDecorator(
              outsideLabelStyleSpec: TextStyleSpec(
                  fontSize: 11,
                  color: this.textColor
              ),
              labelPosition: charts.ArcLabelPosition.outside
          )
        ]
        )
    );
  }
}