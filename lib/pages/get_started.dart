import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/trees-background.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12,top: 40,bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Text(
                    "Hi User",
                    style: TextStyle(fontSize: 36, color: Colors.white,),
                  ),
                ),      
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 177, 174, 174),),
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
                        Navigator.pushNamed(context, '/home')
                      },
                      child: Container(
                        height: 60,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: context.cardColor
                          ),
                        child: Center(
                          child: Text(
                            'Start Test',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}