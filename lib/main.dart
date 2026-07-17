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
        appBar: AppBar(
          title: Text('Hello, this is an AppBar'),
          centerTitle: true,
          leading: Icon(Icons.login),
          actions: [
            Icon(Icons.notification_add_rounded),
            Icon(Icons.settings),
          ],
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
