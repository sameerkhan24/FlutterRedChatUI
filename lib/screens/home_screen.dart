import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'TalkRed',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          leading: IconButton(
            icon: Icon(Icons.camera_alt_rounded),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: (){},
          ),
          elevation: 0.0,
          actions: [
            IconButton(
            icon: Icon(Icons.search_rounded),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: (){},
          ),
          ],
        ),
    );
  }
}
