import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WidgetBasicsView extends StatelessWidget {
  const WidgetBasicsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Display Widgets")),
      body: SingleChildScrollView(
        child: InteractiveViewer(
          child: Column(
            children: [
              Text(
                "this is our text widget " * 6,
                textAlign: TextAlign.justify,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                // textDirection: TextDirection.rtl,
                //Style
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.red,
                  // backgroundColor: Colors.grey,
                  decoration: TextDecoration.combine([
                    TextDecoration.overline,
                    TextDecoration.underline,
                  ]),
                  decorationColor: Colors.orange,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationThickness: 1,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Times",
                  height: 2,
                  letterSpacing: 0,
                  wordSpacing: 10,
                ),
              ),
              SizedBox(height: 24),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.teal,
                  ),
                  children: [
                    TextSpan(text: "To create account you have to accept our "),
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Privacy Policy",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          showDialog(
                            context: context,
                            builder: (context) =>
                                AlertDialog(title: Text("Hi")),
                          );
                        },
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),
              SelectableText(
                "This text is selectable " * 5,
                style: TextStyle(fontSize: 20),
              ),
              SelectableText.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.indigo,
                  ),
                  children: [
                    TextSpan(text: "To create account you have to accept our "),
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Privacy Policy",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          showDialog(
                            context: context,
                            builder: (context) =>
                                AlertDialog(title: Text("Hi")),
                          );
                        },
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Icon(Icons.arrow_back, color: Colors.deepPurple, size: 80),
              Icon(CupertinoIcons.chevron_back, color: Colors.blue, size: 80),
              Image.network(
                "https://picsum.photos/300/200",
                width: 400,
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 24),
              Card(
                color: Colors.redAccent,
                margin: EdgeInsets.all(30),
                elevation: 10,

                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(30),
                ),
                shadowColor: Colors.redAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "This is our card",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              SizedBox(height: 24),
              ListTile(
                title: Text("This is our tile"),
                subtitle: Text("This is our subtitle"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.add),
                onTap: (){
                  //function to be
                  print("This tile was tapped");
                },
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
