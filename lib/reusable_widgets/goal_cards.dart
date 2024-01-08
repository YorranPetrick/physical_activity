import 'package:flutter/material.dart';

class GaolCards extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final Color cardColor;
  final String? imagePath;
  double? heightCardImage = 0;
  List<String> cardText = [];
  GaolCards(
      {required this.cardHeight,
      required this.cardWidth,
      required this.cardColor,
      this.imagePath,
      this.heightCardImage,
      required this.cardText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                cardText[0],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              children: [
                Text(
                  cardText[1],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  cardText[2],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: heightCardImage,
              alignment: Alignment.topRight,
              child: SingleChildScrollView(
                child: imagePath != null
                    ? Image.asset(imagePath!, fit: BoxFit.cover)
                    : SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
