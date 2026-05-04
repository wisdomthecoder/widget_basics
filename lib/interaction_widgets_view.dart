import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InteractionWidgetsView extends StatelessWidget {
  const InteractionWidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons and Interaction Widgets")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_a_photo),
      ),

      body: Column(
        spacing: 34,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              elevation: 0,
              shadowColor: Colors.blue,
            ),
            onPressed: () {
              printHello();
            },
            child: Text("Tap Me!!"),
          ),
          TextButton(
            style: TextButton.styleFrom(),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(title: Text("Hi")),
              );
            },
            child: Text("Click Here"),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder()),
            onPressed: () {},
            child: Text("Tap Here"),
          ),
          Icon(Icons.vibration, size: 40),
          IconButton(
            onPressed: () {
              HapticFeedback.vibrate();
            },
            icon: Icon(Icons.vibration, size: 40),
          ),
          FloatingActionButton(
            onPressed: () {
              HapticFeedback.selectionClick();
            },
            child: Icon(Icons.add),
          ),
          GestureDetector(
            onTap: (){
              showDialog(
                context: context,
                builder: (context) => AlertDialog(title: Text("OnTap")),
              );
            },
            onDoubleTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(title: Text("This is double tap")),
              );
            },
            onLongPress: (){
              showDialog(
                context: context,
                builder: (context) => AlertDialog(title: Text("This is long press")),
              );
            },


            child: Container(color: Colors.blue, width: 200, height: 150),
          ),
          InkWell(
            onTap: (){
              
            },
            child: Container(color: Colors.redAccent, width: 200, height: 150, margin: EdgeInsets.all(12),),
          )
        ],
      ),
    );
  }
}

printHello() {
  print("Creating users account... ");
}
