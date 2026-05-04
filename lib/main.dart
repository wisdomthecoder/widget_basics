
import 'package:flutter/material.dart';
import 'package:widgets_basics/stateful_widgets.dart';
import 'package:widgets_basics/stateless_widget_view.dart';
import 'package:widgets_basics/widget_basics_view.dart';

import 'form_widgets_view.dart';
import 'interaction_widgets_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      builder:(context, child) =>  MediaQuery(data: MediaQuery.of(context).copyWith(textScaler: .linear(2)), child: child!)
        ,
      home: FormWidgetsView(),
    );
  }
}
