import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final dataMap = <String, double>{
    "Transport": 5,
    "Electricity Consumption":5,
    "Food":5
  };

  final colorList = <Color>[
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.redAccent,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
        
              SizedBox(height: 20,),
        
               PieChart(
                chartRadius: 250,
                centerText: "Total Co2 per year",
                dataMap: dataMap,
                chartType: ChartType.ring,
                baseChartColor: Colors.grey[50]!.withOpacity(0.15),
                colorList: colorList,
                legendOptions: const LegendOptions(
                    showLegendsInRow: true,
                    legendPosition: LegendPosition.bottom,
                    showLegends: true,
                    legendShape: BoxShape.circle,
                    legendTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValuesInPercentage: true,
                ),
                totalValue: 15,
              ),
        
        
            ],
          ),
        )
      ),
    );
  }
}