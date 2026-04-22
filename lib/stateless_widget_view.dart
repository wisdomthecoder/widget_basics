import 'package:flutter/material.dart';

class StatelessWidgetView extends StatelessWidget {
  const StatelessWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateless Widgets')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Container
          /*  Container(
            width: 300,
            height: 200,

            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(24),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // color: Colors.teal,
              //This is to add border to a container
              border: Border.all(color: Colors.red, width: 5),

              /// This is to add a border radius to the container(or a circular cut at the the edges
              // borderRadius: BorderRadius.circular(24)
              */
          /*   borderRadius: BorderRadius.only(
                topLeft: Radius.circular(44),
                bottomRight: Radius.circular(23),
              ),*/
          /*
              //Shadow for Container Shadow
              boxShadow: [
                BoxShadow(
                  color: Colors.purple,
                  offset: Offset(0, 20),
                  blurRadius: 30,
                ),
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 40,
                  offset: Offset(10, 15),
                ),
              ],

              //Gradient
              */
          /*gradient: LinearGradient(
                colors: [Colors.amber, Colors.tealAccent],
              ),*/
          /*
              gradient: RadialGradient(colors: [Colors.yellow, Colors.indigo]),
              shape: BoxShape.circle,
            ),
            child: Container(
              margin: EdgeInsets.all(24),
              color: Colors.orange,
              width: 100,
              height: 50,
            ),
          ),

          //Sizedbox
          SizedBox(height: 36),
          SizedBox(
            height: 200,
            width: 200,
            child: Text("This is atext insde a sized" * 5),
          ),
*/

          /// Padding: Give and in-space to its child widgets
          /*  Padding(
            padding: EdgeInsets.all(40),
            child: Icon(Icons.ac_unit_outlined, size: 50),
          ),

          ///Center
          Center(child: Icon(Icons.radar_outlined, size: 67)),

          //Align
          Align(
            alignment: Alignment.topRight,
              child: Icon(Icons.fiber_smart_record_rounded, size: 50, color: Colors.purpleAccent,)),
        //Expanded
        // Expanded(child: Container(width: 200, color: Colors.red,)),
       //Flexible
        Row(
          children: [
            Flexible(child: Text("This is the text"*10)),
          ],
        ),
          Row(
            children: [
              Icon(Icons.eighteen_mp, size: 40,),
              Spacer(),
              Icon(Icons.eighteen_mp, size: 40,),

            ],
          ),
          SizedBox(
            height: 140,
            child: AspectRatio(
              aspectRatio: 16/9,
                child: Container(color:Colors.black,)),
          ),*/
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 24,
            children: [
              Container(width: 120, height: 130, color: Colors.blue),
              Container(width: 120, height: 75, color: Colors.pink),
              Container(width: 120, height: 100, color: Colors.green),
            ],
          ),
          Wrap(
            spacing: 24,

            children: [
              Container(width: 120, height: 130, color: Colors.blue),
              Container(width: 120, height: 75, color: Colors.pink),
              Container(width: 120, height: 100, color: Colors.green),
              Container(width: 120, height: 130, color: Colors.black),
              Container(width: 120, height: 75, color: Colors.pink),
              Container(width: 120, height: 100, color: Colors.green),
            ],
          ),

          Container(
            width: 400,
            padding: .all(30),
            color: Colors.grey,
            height: 300,
            child: Stack(
              children: [
                Image.network(
                  "https://files.codingninjas.in/article_images/flutter-widgets-0-1655013704.webp",
                ),

                Center(
                  child: Text(
                    "This is our image",
                    style: TextStyle(
                      fontSize: 16,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.favorite, color: Colors.red, size: 40),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  // left: 100,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
