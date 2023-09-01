import 'package:carbon_footprint/widgets/next_buttons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TransportCarbon extends StatefulWidget {
  const TransportCarbon({super.key});

  @override
  State<TransportCarbon> createState() => _TransportCarbonState();
}

class _TransportCarbonState extends State<TransportCarbon> {

  String food="";
  int vehicleSelect=-1;
  TextEditingController controller=TextEditingController();
  double current_value=0;
  String val="0";

  Widget VehicleButton(String assetName, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          vehicleSelect = index;
        });
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        side: BorderSide(
            width: (vehicleSelect == index) ? 3.0 : 0.5,
            color: (vehicleSelect == index)
                ? Colors.green
                : Colors.transparent),
      ),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              assetName,
              fit: BoxFit.contain,
              width: 120,
              height: 120,
            ),
          ),
          /*if (vehicleSelect == index)
            Positioned(
              top: 5,
              right: 5,
              child: Image.asset(
                "assets/images/dairy-products.png",
                width: 25,
                fit: BoxFit.cover,
              ),
            ),*/
        ],
      ),
    );
  }

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
                      "Transport Carbon",
                      style: TextStyle(
                        fontSize: 28
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                    child: Text(
                      "Select the option which best describes your travel medium and approx hours spend weekly",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),

                 Padding(
                   padding: EdgeInsets.only(top: 30,left: 30,right: 30),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: VehicleButton("assets/images/car.png", 0),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        child: VehicleButton("assets/images/motorcycle.png", 1),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        child: VehicleButton("assets/images/bus.png", 2),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                   ),
                 ),

                 Padding(
                   padding: EdgeInsets.only(top: 30,left: 30,right: 30),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: VehicleButton("assets/images/train.png", 3),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        child: VehicleButton("assets/images/cycling.png", 4),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        child: VehicleButton("assets/images/walk.png", 5),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                   ),
                 ),

                Padding(
                  padding: EdgeInsets.only(top: 40,left: 30,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("$val hr",style: TextStyle(fontSize: 18),),
                      SizedBox(width: 10,),
                      Slider(
                        min: 0,
                        max: 100,
                        divisions: 100,
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
                            Navigator.pushNamed(context, '/foodCarbon')
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