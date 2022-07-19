import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Savedata extends StatefulWidget {
  @override
  _SavedataState createState() {
    return _SavedataState();
  }
}

class _SavedataState extends State<Savedata> {
  late SharedPreferences prefs;
  TextEditingController controller = new TextEditingController();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text("Save"),
                onPressed: () {
                  save();
                },
              ),
            ],
          )),
    );
  }

  save() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString("userinput", controller.text.toString());
  }
}
