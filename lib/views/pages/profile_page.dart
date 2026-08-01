import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text(controller.text),

            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              value: isChecked,
              title: Text("Click me"),
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),

            Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),

            SwitchListTile(
              value: isSwitched,
              title: Text("Switch me"),
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),

            Slider(
              value: sliderValue,
              max: 100,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
                print(sliderValue);
              },
            ),

            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                print("Image selected");
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.white12,),
            ),
          ],
        ),
      ),
    );
  }
}
