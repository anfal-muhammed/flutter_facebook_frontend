import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/assets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget thinDivider =       Divider(
      thickness: 1,
      color: Colors.grey[400],
    );

    Widget thickDivider =           Divider(
      thickness: 10,
      color: Colors.grey[400],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(buttonIcon: Icons.search, buttonAction: (){
              print("Search screen Appears");
            }),
            CircularButton(buttonIcon: Icons.chat, buttonAction: (){
              print("Messenger Appears");
            }),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonAction: (){
                    print("Go Live!");
                  },
                  buttonColor: Colors.red),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: (){
                    print("Take Photo");
                  },
                  buttonColor: Colors.green),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: (){
                    print("Create Room");
                  },
                  buttonColor: Colors.purple),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(avatar: mamootty,
              name: "Mamootty",
              publishedAt: "3h",
              postTitle: "TURBO",
              postImage: Mamootty,
              showBlueTick: true,
            likeCount: "10k",
            commentCount: "1k",
            shareCount: "5k",),
            thickDivider,
            PostCard(avatar: tovino,
              name: "Tovino",
              publishedAt: "5h",
              postTitle: "",
              postImage: Tovino,
              showBlueTick: true,
              likeCount: "5k",
              commentCount: "1k",
              shareCount: "2k",),
            thickDivider,
            PostCard(avatar: prithvi,
              name: "Prithviraj",
              publishedAt: "6h",
              postTitle: "GOAT",
              postImage: Prithvi,
              showBlueTick: true,
              likeCount: "7k",
              commentCount: "1k",
              shareCount: "3k",),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(avatar: fahad,
              name: "Fahad",
              publishedAt: "9h",
              postTitle: fahadTitle,
              postImage: Fahad,
              showBlueTick: true,
              likeCount: "8.2k",
              commentCount: "1.5k",
              shareCount: "2.7k",),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
