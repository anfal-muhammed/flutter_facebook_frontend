import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

import '../widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: dq, displayStatus: true),
          Avatar(displayImage: prithvi, displayStatus: true),
          Avatar(displayImage: mamootty, displayStatus: true),
          Avatar(displayImage: fahad, displayStatus: true),
          Avatar(displayImage: tovino, displayStatus: true),
          Avatar(displayImage: prithvi, displayStatus: true),
          Avatar(displayImage: mamootty, displayStatus: true),
          Avatar(displayImage: fahad, displayStatus: true),
          Avatar(displayImage: tovino, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          print("Create chat room");
        },
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(
              color: Colors.blue,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
