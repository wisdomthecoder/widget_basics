import 'dart:math';

import 'package:flutter/material.dart';

class ScrollWidgets extends StatelessWidget {
  const ScrollWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    List<Contact> myContacts = [
      Contact(name: "Mum", phoneNumber: "+234 81235 34323242"),
      Contact(name: "Friend", phoneNumber: "+234 23 232 3235 "),
      Contact(name: "Brother", phoneNumber: "+234 23 232 3235 "),
      Contact(name: "Sister", phoneNumber: "+234 23 232 3235 "),
      Contact(name: "Cousin", phoneNumber: "+234 23 232 3235 "),
      Contact(name: "Niece", phoneNumber: "+234 23 232 3235 "),
      Contact(name: "Nephew", phoneNumber: "+234 23 232 3235 "),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("My Contact")),
      body: Center(
        child: SizedBox(
          height: 500,
          child: PageView(
            children: [
              Image.network( "https://files.codingninjas.in/article_images/flutter-widgets-0-1655013704.webp",
                fit: BoxFit.cover,
                // height: 400,
              ),Image.network( "https://images.unsplash.com/flagged/photo-1579782647395-2e6fb36a64f2?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGNhciUyMG9uJTIwdGhlJTIwcm9hZHxlbnwwfHwwfHx8MA==",
                fit: BoxFit.cover,
                // height: 400,
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class Contact {
  String name, phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}
