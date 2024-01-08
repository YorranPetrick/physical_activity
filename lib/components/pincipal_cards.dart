import 'package:flutter/material.dart';

import '../reusable_widgets/goal_cards.dart';

class PincipalCards extends StatelessWidget {
  const PincipalCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GaolCards(
          cardHeight: 230,
          cardWidth: 180,
          cardColor: Colors.blue,
          heightCardImage: 130,
          imagePath: 'lib/assets/images/Nike-air-force-azul-vermelho.png',
          cardText: ['Running', '30', ' Mins'],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GaolCards(
              cardHeight: 150,
              cardWidth: 150,
              cardColor: Colors.amberAccent,
              cardText: ['Cyclling', '40', ' Mins'],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 12.5),
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(),
              ),
              child: Expanded(
                child: Text(
                  'Sell All',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
