import 'package:flutter/material.dart';

class TransportWidget extends StatefulWidget {
  const TransportWidget({super.key});

  @override
  State<TransportWidget> createState() => _TransportWidgetState();
}

class _TransportWidgetState extends State<TransportWidget> {
  int selectedPayment=0;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selectedPayment = 0;
        });
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        side: BorderSide(
            width: (selectedPayment == 0) ? 2.0 : 0.5,
            color: (selectedPayment == 0)
                ? Colors.green
                : Colors.blue.shade600),
      ),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/images/dairy-products.png",
              fit: BoxFit.contain,
              width: 120,
              height: 120,
            ),
          ),
          if (selectedPayment == 0)
            Positioned(
              top: 5,
              right: 5,
              child: Image.asset(
                "assets/images/dairy-products.png",
                width: 25,
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}