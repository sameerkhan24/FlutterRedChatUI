import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/widgets/categoryselector.dart';
import 'package:flutter_chat_ui_starter/widgets/favouritecontacts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
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
        body: Column(
          children: [
            CategorySelector(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: [
                    FavouriteContacts(),
                  ],
                ),
              ),
              
            ),
          ],
        ),
    );
  }
}
