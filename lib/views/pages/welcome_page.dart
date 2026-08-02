import 'package:flutter/material.dart';
import 'package:niche_app/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20.0),
              child: Image.asset("assets/images/paulriken.jpeg"),
            ),

            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text("Log in"),
            ),
          ],
        ),
      ),
    );
  }
}
