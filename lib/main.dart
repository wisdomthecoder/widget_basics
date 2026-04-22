
import 'package:flutter/material.dart';
import 'package:widgets_basics/stateful_widgets.dart';
import 'package:widgets_basics/stateless_widget_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     /* builder:(context, child) => Theme(
        data: ThemeData().copyWith(
          textTheme: TextTheme(titleMedium: TextStyle(fontSize: 20))
        ),
        child: child!,
      ),*/
      home: StatelessWidgetView(),
    );
  }
}
