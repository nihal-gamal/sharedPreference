import 'package:my_app/showdata.dart';
import 'package:my_app/savedata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarApp());
}

class TabBarApp extends StatelessWidget {
  const TabBarApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Save data',
                ),
                Tab(text: 'Show Data'),
              ],
              indicator: BoxDecoration(color: Colors.purple),
            ),
          ),
          body: TabBarView(
            children: [
              Savedata(),
              Showdata(),
            ],
          ),
        ),
      ),
    );
  }
}
