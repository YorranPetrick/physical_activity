import 'package:flutter/material.dart';

class FriendsAvatar extends StatelessWidget {
  const FriendsAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[200],
      width: 30,
      height: 30,
      child: Icon(Icons.add),
    );
  }
}
