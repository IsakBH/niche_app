import 'package:flutter/material.dart';
import 'package:niche_app/views/data/notifiers.dart';
import 'package:niche_app/views/pages/home_page.dart';
import 'package:niche_app/views/pages/profile_page.dart';
import 'package:niche_app/views/pages/settings_page.dart';
import 'package:niche_app/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Isak Henriksen"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),

          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (BuildContext context, bool isDarkMode, Widget? child) {
                if (isDarkMode) {
                  // hvis dark mode er skrudd på
                  return Icon(Icons.light_mode);
                } else {
                  // hvis dark mode er skrudd av, altså, hvis det er light mode
                  return Icon(Icons.dark_mode);
                }
              },
            ),
          ),
        ],
        //backgroundColor: Color.fromRGBO(28, 34, 28, 1),
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
