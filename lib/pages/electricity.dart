import 'package:carbon_footprint/widgets/next_buttons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ElectricBill extends StatefulWidget {
  const ElectricBill({super.key});

  @override
  State<ElectricBill> createState() => _ElectricBillState();
}

class _ElectricBillState extends State<ElectricBill> {

  

  double current_value=1;
  String val="1";

  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/trees-background.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.9,
            heightFactor: 0.8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: context.canvasColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Padding(
                    padding: EdgeInsets.only(top: 30,left: 20),
                    child: Text(
                      "Energy Consumed",
                      style: TextStyle(
                        fontSize: 28
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                    child: Text(
                      "Enter the averrage monthly electricity consumed in terms of kWh",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),

                Padding(
                  padding: EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 30),
                  child: Row(
                    children:[  
                      
                      Text("Enter Total Units",style: TextStyle(fontSize: 18),) ,     
                      SizedBox(width: 40,),           
                      Flexible(
                        child: SizedBox(
                          width: 100,
                          height: 55,
                          child: TextField(
                            
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:  Color.fromRGBO(231, 216, 233, 1),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color: Colors.purple,
                                  width: 4.0,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color: context.cardColor,
                                  width: 4.0,
                                ),
                              ),
                              hintText: 'kWh',
                            ),    
                            controller: controller
                          ),
                        ),
                      ),
                          
                    ]              
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 20,right: 20),
                        child: Text("Total person living in house: $val ",style: TextStyle(fontSize: 18),),
                      ),
                      SizedBox(height: 10,),
                     
                      Slider(
                        min: 1,
                        max: 10,
                        divisions: 9,
                        value: current_value, 
                        onChanged: (value){
                          setState(() {
                            current_value=value;
                            val=current_value.round().toString();
                          });
                        }
                      ),
                    ],
                  ),
                ),
                 
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () => {
                            Navigator.pushNamed(context, '/home')
                          },
                          child: NextButton(text: "Next")
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}