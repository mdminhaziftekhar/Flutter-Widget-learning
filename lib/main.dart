import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/screens/alert_dialogue.dart';
import 'package:flutter_learning/screens/animated_container.dart';
import 'package:flutter_learning/screens/animated_icon.dart';
import 'package:flutter_learning/screens/autocomplete.dart';
import 'package:flutter_learning/screens/cardScreen.dart';
import 'package:flutter_learning/screens/datepicker.dart';
import 'package:flutter_learning/screens/dismissable.dart';
import 'package:flutter_learning/screens/expanded.dart';
import 'package:flutter_learning/screens/flexible.dart';
import 'package:flutter_learning/screens/floatingbutton.dart';
import 'package:flutter_learning/screens/form.dart';
import 'package:flutter_learning/screens/popupmenu.dart';
import 'package:flutter_learning/screens/sliver_appbar.dart';
import 'package:flutter_learning/screens/sliver_list.dart';
import 'package:flutter_learning/screens/table.dart';
import 'package:flutter_learning/screens/timepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverListScreen();
  }
}
