import 'package:flutter/material.dart';
import 'package:niche_app/views/pages/home_page.dart';
import 'package:niche_app/views/pages/profile_page.dart';
import 'package:niche_app/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage()
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Isak Henriksen"),
          centerTitle: true,
        ),
        body: pages.elementAt(0),
        bottomNavigationBar: NavbarWidget(),
        );
  }
}