import 'package:flutter/material.dart';

class HydrationCalorieCard extends StatelessWidget {
  final String textOfInformation;
  final String quantity;
  final String imagePath;
  const HydrationCalorieCard(
      {required this.textOfInformation,
      required this.quantity,
      required this.imagePath,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(width: 1),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(quantity),
              Text(textOfInformation),
            ],
          )
        ],
      ),
    );
  }
}
