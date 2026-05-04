import 'package:flutter/material.dart';

class FormWidgetsView extends StatefulWidget {
  const FormWidgetsView({super.key});

  @override
  State<FormWidgetsView> createState() => _FormWidgetsViewState();
}

class _FormWidgetsViewState extends State<FormWidgetsView> {
  var formKey = GlobalKey<FormState>();
  bool isChecked = false;
  String gender = "Female";
  bool isLightMode = true;
  double fontValue = 0.1;
  ThemeData theme = ThemeData.light();
String bestFramework = "";
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme,
      child: Scaffold(
        appBar: AppBar(title: Text("Form Widgets")),
        body: Form(
          key: formKey,
          child: Column(
            spacing: 24,
            children: [
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                autovalidateMode: .always,
                validator: (v) {
                  if (v!.isEmpty) {
                    return "Pls input here";
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print("Submit");
                  }
                },
                child: Text("Login"),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  // labelText: "Email",
                  hintText: "Pls input here",
                ),
              ),

              Checkbox(
                value: isChecked,
                onChanged: (newValue) {
                  isChecked = newValue!;
                  setState(() {});
                },
              ),
              Row(
                children: [
                  Text("Male"),
                  Radio(
                    value: "Male",
                    groupValue: gender,
                    onChanged: (newValue) {
                      gender = newValue!;
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Female"),

                  Radio(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (newValue) {
                      gender = newValue!;
                      setState(() {});
                    },
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (gender == "Male") {
                    print("This is a boy");
                  } else if (gender == "Female") {
                    print("This is a girl");
                  }
                },
                child: Text("Tap Me!"),
              ),

              Switch(
                value: isLightMode,

                onChanged: (newValue) {
                  isLightMode = newValue!;
                  if (isLightMode == true) {
                    theme = ThemeData.dark();
                  } else {
                    theme = ThemeData.light();
                  }
                  setState(() {});
                },
              ),
              Text("Increase Me", style: TextStyle(fontSize: fontValue*30),),
              Slider(onChanged: (newValue) {
                fontValue = newValue;
                setState(() {

                });
              }, value: fontValue),

              DropdownButton<String>(
                  // value: bestFramework,
                  items: [
                DropdownMenuItem(value: "Laravel",child: Text("Laravel"),),
                DropdownMenuItem(value: "Flutter",child: Text("Flutter"),),
              ], onChanged: (newValue){

              })
            ],
          ),
        ),
      ),
    );
  }
}
