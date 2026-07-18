import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Isak Henriksen'), centerTitle: true),

        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                print("Test");
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10.0),
            FloatingActionButton(
              onPressed: () {
                print("Test men det er den andre knappen ;)");
              },
              child: Icon(Icons.add),
            ),
          ],
        ),

        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.tune), label: "Tune"),
          ],
          selectedIndex: 0,
          onDestinationSelected: (int value) {},
        ),
      ),
    );
  }
}
