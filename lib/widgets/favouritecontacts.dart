import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';
import 'package:flutter_chat_ui_starter/screens/chatsscreen.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text(
                             'Favourite Contacts',
                             style: TextStyle(
                               color: Colors.blueGrey,
                               fontSize: 18,
                               fontWeight: FontWeight.bold,
                               letterSpacing: 1.0,
                             ),
                             ),
                           IconButton(
                           onPressed: (){}, 
                           icon: Icon(Icons.more_horiz_rounded),
                           color: Colors.blueGrey,
                           iconSize: 30,
                              )
                      ],
               ),
          ),
          Container(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context,int index){
                  return GestureDetector(
                    onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_)=> ChatScreen(user: favorites[index],),
                    ),
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(favorites[index].imageUrl),
                          ),
                          SizedBox(height: 6,),
                          Text(
                            favorites[index].name,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}