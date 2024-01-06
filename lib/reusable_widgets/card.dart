import 'package:flutter/material.dart';

class HydrationCalorieCard extends StatelessWidget {
  final String textOfInformation;
  final String quantity;
  final String imagePath;
  final Color color;
  const HydrationCalorieCard(
      {required this.textOfInformation,
      required this.quantity,
      required this.imagePath,
      required this.color,
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
            padding: EdgeInsets.all(5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                quantity,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(textOfInformation),
            ],
          )
        ],
      ),
    );
  }
}
