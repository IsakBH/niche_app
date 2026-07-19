import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selected_index = 0;

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
        appBar: AppBar(
          title: Text("Isak Henriksen"),
          centerTitle: true,
        ),

        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedIndex: selected_index,
        onDestinationSelected: (int value) {
          setState(() {
            selected_index = value;
          });
        },
        ),
      ),
    );
  }
}
