import 'package:flutter/material.dart';
import 'package:physical_activity_page/reusable_widgets/hydration_calorie_card.dart';
import '../components/friends_sections.dart';
import '../components/pincipal_cards.dart';
import '../components/top_bar.dart';
import '../reusable_widgets/section_titles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopBar(),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HydrationCalorieCard(
                        textOfInformation: 'Liters Water',
                        quantity: '4.5',
                        imagePath: 'lib/assets/images/water-drop.png',
                        color: Colors.blue),
                    HydrationCalorieCard(
                      textOfInformation: 'Calories',
                      quantity: '2.3K',
                      imagePath: 'lib/assets/images/calories.png',
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
              SectionTitles(
                titleSection: "Today's Goals",
              ),
              SizedBox(
                height: 20,
              ),
              PincipalCards(),
              SizedBox(
                height: 20,
              ),
              SectionTitles(
                titleSection: 'Duel With a Friend',
              ),
              //FriendsSections(),
            ],
          ),
        ),
      ),
    );
  }
}
