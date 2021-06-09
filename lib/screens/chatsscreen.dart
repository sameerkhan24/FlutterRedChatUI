import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';
import 'package:flutter_chat_ui_starter/models/user_model.dart';


class ChatScreen extends StatefulWidget {
  
  final User user;
  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _buildMessage(Message message, bool isMe){
    return Container(
      margin: isMe 
      ? EdgeInsets.only(top: 8,bottom: 8,left: 80)
      : EdgeInsets.only(top: 8,bottom: 8,right: 80),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).accentColor :Color(0xFFFFEFEE),
        borderRadius: isMe? BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15)
        )
        :BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15)
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.time,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            ),
          SizedBox(height: 8,),
          Text(
            message.text,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            ),
        ],
      ),
    );
  }


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
                  reverse: true,
                  itemCount: messages.length,
                  padding: EdgeInsets.only(top: 15),
                  itemBuilder: (BuildContext context, int index){
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
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