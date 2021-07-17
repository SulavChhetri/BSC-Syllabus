import 'package:flutter/material.dart';
import 'syllabus.dart';
import 'formula.dart';
import 'developer.dart';
import 'questionpaper.dart';
import 'notes.dart';

Color royalblue = Color(0xff002366);
Color scarletred = Color(0xffb60000);
Color mintgreen = Color(0xffb2f0e3);
Color silver = Color(0xffbec8d0);



const Color kTextcolor = Color(0xFF8D8E98);
const Color kInactivecardcolor = Color(0xFF111328);
const Color kactivecardcolor = Color(0xFF1D1E33);
const Color kBottomcontainercolor = Color(0xFFEB1555);
Color abc = Color(0xff267e90);




void main(List<String> args) {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BSC SYLLABUS"),
        ),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("ADMIN"),
              accountEmail: new Text("rairajupungwat1234&gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Contact Us"),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text("Privacy Policy"),
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text("Rate App"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit App"),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) {return Syllabus(); } ));
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.content_copy,
                        size: 70.0,
                      ),
                      Text(
                        "Syllabus",
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) {return QuestionPaper(); } ));

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.question_answer,
                        size: 70.0,
                      ),
                      Text(
                        "Question paper",
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) {return Notes(); } ));
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.note,
                        size: 70.0,
                      ),
                      Text(
                        "Notes",
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) {return Formula(); } ));
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.face,
                        size: 70.0,
                      ),
                      Text(
                        "Formula",
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) {return Developer(); } ));
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.developer_mode,
                        size: 70.0,
                      ),
                      Text(
                        "About Developer",
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.youtube_searched_for,
                        size: 70.0,
                      ),
                      Text(
                        "Youtube",
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}