import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: kInactivecardcolor,
            ),
            child: Center(child: Text('BSC Syllabus',style: kHeadtitle,),),),
          ListTile(
            leading: Icon(FontAwesomeIcons.facebook),
            title: Text('Rate us in facebook',style: kBodytext,),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings and Privacy'),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.infoCircle),
            title: Text('Help and Support'),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.user),
            title: Text('About Us', style: kBodytext,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.signOutAlt),
            title: Text('Exit App'),
          ),
        ],
      ),
    );
  }
}
