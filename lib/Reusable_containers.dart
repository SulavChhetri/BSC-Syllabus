import 'package:flutter/material.dart';
import 'constants.dart';

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

