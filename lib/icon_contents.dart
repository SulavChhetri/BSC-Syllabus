import 'constants.dart';
import 'package:flutter/material.dart';

class Iconcontent extends StatelessWidget {

  final IconData icon;
  final String icontext;
  Iconcontent({required this.icon, required this.icontext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 60,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          icontext,
          style: kBodytext,
        ),
      ],
    );
  }
}
