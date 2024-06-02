import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            avatar: dq,
            story: dq,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mammootty",
            avatar: mamootty,
            story: Mamootty,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Fahad",
            avatar: fahad,
            story: Fahad,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Prithviraj",
            avatar: prithvi,
            story: Prithvi,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Tovino",
            avatar: tovino,
            story: Tovino,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Dulquer",
            avatar: dq,
            story: dq,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
