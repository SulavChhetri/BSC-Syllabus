import 'package:bscsyllabus/formula.dart';
import 'package:bscsyllabus/notes.dart';
import 'package:bscsyllabus/questionpaper.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';
import 'syllabus.dart';
import 'notices.dart';
import 'notes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kInactivecardcolor,
        canvasColor: kActivecardcolor,
        scaffoldBackgroundColor: kInactivecardcolor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context)=> InputPage(),
        '/first': (context)=> Syllabus(),
        '/second':(context)=> QuestionPaper(),
        '/third': (context)=> Notes(),
        '/fourth':(context)=> Formula(),
        '/fifth': (context)=> Notice(),
      },
    );
  }
}
