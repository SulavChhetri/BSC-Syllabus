import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Reuseablecontainer extends StatelessWidget {
  final Widget cardchild;
  Reuseablecontainer({required this.cardchild});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: kActivecardcolor,
        ),
        child: cardchild,
      ),
    );
  }
}

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
