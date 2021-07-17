import 'drawers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'Reusable_containers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'icon_contents.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: AppBar(
        title: Text(
          'BSC Syllabus',
          style: kHeadtitle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Reuseablecontainer(
                    cardchild: TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/first');
                      },
                      child: Iconcontent(
                        icon: Icons.library_books,
                        icontext: 'Syllabus',
                      ),
                    ),
                  ),
                  Reuseablecontainer(
                    cardchild: Iconcontent(
                      icontext: 'Question Paper',
                      icon: Icons.question_answer,
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
                      icon: Icons.speaker_notes,
                      icontext: 'Notes',
                    ),
                  ),
                  Reuseablecontainer(
                    cardchild: Iconcontent(
                      icon: Icons.flip_to_front,
                      icontext: 'Formula',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Row(
              children: [
                Reuseablecontainer(
                  cardchild: Iconcontent(
                    icon: Icons.assignment,
                    icontext: 'Notice',
                  ),
                ),
                Reuseablecontainer(
                  cardchild: InkWell(
                    onTap:()=> launch('https://www.youtube.com/'),
                    child: Iconcontent(
                      icontext: 'Youtube',
                      icon: FontAwesomeIcons.youtube,
                    ),
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


