import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Showdata extends StatefulWidget {
  @override
  _ShowdataState createState() {
    return _ShowdataState();
  }
}

class _ShowdataState extends State<Showdata> {
  late SharedPreferences prefs;
  TextEditingController controller = new TextEditingController();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          margin: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: Text("retrieve data"),
                  onPressed: () {
                    retrieve();
                  },
                ),
              ],
            ),
          )),
    );
  }

  retrieve() async {
    prefs = await SharedPreferences.getInstance();
    name = prefs.getString("userinput")!;
    setState(() {});
  }
}
