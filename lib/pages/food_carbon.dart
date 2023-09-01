import 'package:carbon_footprint/widgets/next_buttons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FoodCarbon extends StatefulWidget {
  const FoodCarbon({super.key});

  @override
  State<FoodCarbon> createState() => _FoodCarbonState();
}

class _FoodCarbonState extends State<FoodCarbon> {

  String food="";

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
                      "Food Consumption",
                      style: TextStyle(
                        fontSize: 28
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 30,left: 20),
                    child: Text(
                      "Select the option which best describes your daily food consumption",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),


                  //Meat Eater
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        Image.asset(
                          "assets/images/chicken-leg.png",
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(width: 20,),
                        Text("Meat Based",style: TextStyle(fontSize: 16),),
                        SizedBox(width: 20,),
                         Radio(
                          activeColor: Colors.red,
                          value: "meat", 
                          groupValue: food, 
                          onChanged: (value){
                            setState(() {
                              food=value.toString();
                            });
                          }
                        ),
                      ]   
                    ),
                  ),

                  //pescatrian
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        Image.asset(
                          "assets/images/fish.png",
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(width: 20,),
                        Text("Pescaterian",style: TextStyle(fontSize: 16),),
                        SizedBox(width: 20,),
                         Radio(
                          value: "fish", 
                          groupValue: food, 
                          onChanged: (value){
                            setState(() {
                              food=value.toString();
                            });
                          }
                        ),
                      ]   
                    ),
                  ),

                  //Vegetarian
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        Image.asset(
                          "assets/images/dairy-products.png",
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(width: 20,),
                        Text("Vegetarian",style: TextStyle(fontSize: 16),),
                        SizedBox(width: 20,),
                         Radio(
                          activeColor: Color.fromARGB(255, 255, 207, 51),
                          value: "vegetarian", 
                          groupValue: food, 
                          onChanged: (value){
                            setState(() {
                              food=value.toString();
                            });
                          }
                        ),
                      ]   
                    ),
                  ),

                  //Vegan
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        Image.asset(
                          "assets/images/salad.png",
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(width: 20,),
                        Text("Vegan",style: TextStyle(fontSize: 16),),
                        SizedBox(width: 20,),
                         Radio(
                          activeColor: Colors.green,
                          value: "vegan", 
                          groupValue: food, 
                          onChanged: (value){
                            setState(() {
                              food=value.toString();
                            });
                          }
                        ),
                      ]   
                    ),
                  ),

                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () => {
                            Navigator.pushNamed(context, '/transportCarbon')
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