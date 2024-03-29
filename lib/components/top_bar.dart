import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        color: Color(0xff201f1f),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(
            40,
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello John !',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                CircleAvatar(
                  child: Image.asset(
                    'lib/assets/images/John.png',
                    fit: BoxFit.cover,
                  ),
                  radius: 24,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Duration',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Energy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0:12:25',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      '76.0',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 23,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: LinearProgressIndicator(
              value: 0.6,
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
