import 'package:flutter/material.dart';
import 'package:niche_app/views/data/notifiers.dart';
import 'package:niche_app/views/pages/home_page.dart';
import 'package:niche_app/views/pages/profile_page.dart';
import 'package:niche_app/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Isak Henriksen"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(28, 34, 28, 1),
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedpage, child) {
          return pages.elementAt(selectedpage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
