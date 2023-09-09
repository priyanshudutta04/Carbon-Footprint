import 'package:carbon_footprint/widgets/drawer.dart';
import 'package:carbon_footprint/widgets/tips.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:velocity_x/velocity_x.dart';

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
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: AppDrawer(//creates menu button
      ),


      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
      
                Center(
                  child: Text(
                    "Annual Carbon Footprint",
                    style: TextStyle(fontSize: 18),
                  )
                ),

                SizedBox(height: 20,),

                PieChart(
                chartRadius: 250,
                centerText:  "498 kg co2e",
                centerTextStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black
                ),
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
                chartValuesOptions:  ChartValuesOptions(
                  showChartValuesInPercentage: true,
                  chartValueStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.black
                  ),
                  chartValueBackgroundColor: context.canvasColor
                ),
                totalValue: 15,
              ),


               SizedBox(height: 20,),


              Center(
                  child: Text(
                    "42% higher than an average indian",
                    style: TextStyle(fontSize: 18),
                  )
                ),



                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tips to reduce footprint"),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TipsCont(text: "Lorem ipsum ghyr gtuio oi. lorem ipsum",col_index: 0,),
                              SizedBox(width: 20,),
                              TipsCont(text: "Lorem ipsum ghyr gtuio oi. lorem ipsum",col_index: 1,),
                              SizedBox(width: 20,),
                              TipsCont(text: "Lorem ipsum ghyr gtuio oi. lorem ipsum",col_index: 2,),
                            ],
                          ),
                        ),
                      ],
                    ),     
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: context.cardColor
                    ),
                    child: Row(
                      children: [
                        Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Image.asset(
                              "assets/images/tea-leaves.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: context.cardColor
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const Expanded(
                          child: Center(                
                            child: Text(
                              "Learn More About Climate Change",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),              
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 30,),
          
          
              ],
            ),
          )
        ),
      ),
    );
  }
}