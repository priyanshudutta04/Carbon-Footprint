import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TipsCont extends StatelessWidget {
  final String text;
  final int col_index;
  TipsCont({super.key, required this.text, required this.col_index});

  List<Color> colors = [Color.fromRGBO(225, 190, 221, 1), const Color.fromARGB(255, 238, 204, 103), Color.fromARGB(255, 236, 80, 87)];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: colors[col_index],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            SizedBox(height: 20,),
            Text(
              text,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}