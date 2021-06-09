import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';
import 'package:flutter_chat_ui_starter/models/user_model.dart';


class ChatScreen extends StatefulWidget {
  
  final User user;
  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
        ),
        elevation: 0.0,
        actions: [
            IconButton(
            icon: Icon(Icons.more_horiz_rounded),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: (){},
          ),
          ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: ListView.builder(
                  itemCount: messages.length,
                  padding: EdgeInsets.only(top: 15),
                  itemBuilder: (BuildContext context, int index){
                    final Message message = messages[index];
                    return Text(message.text);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}