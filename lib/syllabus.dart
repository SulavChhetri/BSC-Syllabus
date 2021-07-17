import 'package:bscsyllabus/Reusable_containers.dart';
import 'package:bscsyllabus/constants.dart';
import 'package:bscsyllabus/icon_contents.dart';
import 'package:flutter/material.dart';

class Syllabus extends StatefulWidget {
  @override
  _SyllabusState createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Syllabus',
          style: kHeadtitle,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Reuseablecontainer(
                    cardchild: Iconcontent(
                      icontext: '1st Year',
                      icon: Icons.assignment,
                    ),
                  ),
                  Reuseablecontainer(
                    cardchild: Iconcontent(
                      icon: Icons.assignment,
                      icontext: '2nd Year',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Reuseablecontainer(
                    cardchild: Iconcontent(
                      icontext: '3rd Year',
                      icon: Icons.assignment,
                    ),
                  ),
                  Reuseablecontainer(
                    cardchild: Iconcontent(
                      icon: Icons.assignment,
                      icontext: '4th Year',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
