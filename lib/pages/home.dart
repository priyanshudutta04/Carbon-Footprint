import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Text(
                  "Hi User",
                  style: TextStyle(fontSize: 32, color: Colors.red,),
                ),
              ),      
            ),

            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: MaterialButton(
                  onPressed: () => {},
                  child: Text('Start Test'),
                ),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}