import 'package:flutter/material.dart';

class AppStructureView extends StatelessWidget {
  const AppStructureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is our AppBar"),
        actions: [Icon(Icons.delete)],
      ),
      drawer: Drawer(
        // backgroundColor: Colors.red,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("john@doe.com"),
              currentAccountPicture: Image.network(
                "https://images.unsplash.com/flagged/photo-1579782647395-2e6fb36a64f2?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGNhciUyMG9uJTIwdGhlJTIwcm9hZHxlbnwwfHwwfHx8MA==",
              ),
            ),
            // DrawerHeader(child: Text('Menu')),
            ListTile(title: Text('Dashboard')),
            ListTile(title: Text('Settings')),
            ListTile(title: Text('Logout')),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: 2,
          destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.favorite_border), label: "Favourite"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ]),
    );
  }
}
