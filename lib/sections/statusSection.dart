import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

import '../widgets/avatar.dart';

class StatusSection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: dq, displayStatus: false),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder:InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
