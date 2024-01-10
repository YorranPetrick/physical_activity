import 'package:flutter/material.dart';

import '../reusable_widgets/friends_avatar.dart';

class FriendsSections extends StatefulWidget {
  const FriendsSections({Key? key}) : super(key: key);

  @override
  State<FriendsSections> createState() => _FriendsSectionsState();
}

class _FriendsSectionsState extends State<FriendsSections> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [],
    );
  }
}
