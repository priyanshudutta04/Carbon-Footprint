import 'package:carbon_footprint/widgets/next_buttons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FoodCarbon extends StatelessWidget {
  const FoodCarbon({super.key});

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

                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 20),
                    child: Text(
                      "Food Consumption",
                      style: TextStyle(
                        fontSize: 28
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 20),
                    child: Text(
                      "Select the option which best describes your daily meat consumption",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),

                  

                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
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