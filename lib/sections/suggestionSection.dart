import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
              onPressed: (){
                print("More Clicked");
              },
              icon: Icon(Icons.more_horiz,color: Colors.grey[700],),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  name: "Anfal Muhammed",
                  avatar: anfal,
                  mutualFriends: "1 mutual friend",
                  addFriend: (){
                    print("Request Friendship!!");
                  },
                  removeFriends: (){
                    print("Remove this person");
                  },
                ),
                SuggestionCard(
                  name: "Faha Faasil",
                  avatar: fahad,
                  mutualFriends: "10 mutual friend",
                  addFriend: (){
                    print("Request Friendship!!");
                  },
                  removeFriends: (){
                    print("Remove this person");
                  },
                ),
                SuggestionCard(
                  name: "Tovino",
                  avatar: tovino,
                  mutualFriends: "123 mutual friend",
                  addFriend: (){
                    print("Request Friendship!!");
                  },
                  removeFriends: (){
                    print("Remove this person");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
