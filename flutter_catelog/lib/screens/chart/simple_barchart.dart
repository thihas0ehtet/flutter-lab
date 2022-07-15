/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import 'OrdianlSales.dart';

class SimpleBarChart extends StatelessWidget {
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
      new OrdinalSales('2014', 5),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Barchart'),
      ),
      body: Container(
        height: 600,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Text(
                "Actual cost by category",
              ),
              Expanded(
                child: charts.BarChart(
                  _createSampleData(),
                  animate: true,
                  domainAxis: new charts.OrdinalAxisSpec(
                    renderSpec: charts.SmallTickRendererSpec(
                      labelRotation: 0,
                      labelStyle: charts.TextStyleSpec(
                        color: charts.MaterialPalette.gray.shadeDefault,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  primaryMeasureAxis: new charts.NumericAxisSpec(
                      renderSpec: new charts.GridlineRendererSpec(
                          labelAnchor: charts.TickLabelAnchor.centered,

                          // Left justify the text in the axis.
                          //
                          // Note: outside means that the secondary measure axis would right
                          // justify.
                          labelJustification:
                              charts.TickLabelJustification.outside,
                          // Tick and Label styling here.
                          labelStyle: new charts.TextStyleSpec(
                            // size in Pts.
                            color: charts.MaterialPalette.gray.shadeDefault,
                            fontSize: 14,
                          ),

                          // Change the line colors to match text color.
                          lineStyle: new charts.LineStyleSpec(
                              color:
                                  charts.MaterialPalette.gray.shadeDefault))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
