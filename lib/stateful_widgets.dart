import 'package:flutter/material.dart';

class StatefulWidgetsView extends StatefulWidget {
  const StatefulWidgetsView({super.key});

  @override
  State<StatefulWidgetsView> createState() => _StatefulWidgetsViewState();
}

class _StatefulWidgetsViewState extends State<StatefulWidgetsView> {
  bool isChecked = false;
  int count  = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Column(
          children: [
            Switch(
              value: isChecked,
              onChanged: (v) {
                isChecked = true;
                setState(() {});
              },
            ),
            Text("$count", style: TextStyle(
              fontSize: 40
            ),),
            ElevatedButton(onPressed: (){
              count = count+1;
              setState(() {
              });
            }, child: Text("Increment"))
          ],
        ),
      ),
    );
  }
}
