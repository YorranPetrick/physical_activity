import 'package:flutter/material.dart';

class SectionTitles extends StatelessWidget {
  final String titleSection;
  const SectionTitles({required this.titleSection, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        titleSection,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        textAlign: TextAlign.start,
      ),
    );
  }
}
