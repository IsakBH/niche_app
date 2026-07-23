import 'package:flutter/material.dart';
import 'package:niche_app/widgets/navbar_widget.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Isak Henriksen"),
          centerTitle: true,
        ),

        bottomNavigationBar: NavbarWidget(),
        );
  }
}