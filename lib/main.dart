
import 'package:flutter/material.dart';
import 'package:widgets_basics/stateful_widgets.dart';
import 'package:widgets_basics/stateless_widget_view.dart';
import 'package:widgets_basics/widget_basics_view.dart';

import 'app_structure.dart';
import 'form_widgets_view.dart';
import 'interaction_widgets_view.dart';
import 'scroll_widgets.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: "Satoshi",
      ),


      home: AppStructureView(),
    );
  }
}
