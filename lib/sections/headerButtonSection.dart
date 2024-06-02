import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {

  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
});

//   Widget headerButton({
//     buttonText,
//     buttonIcon,
//     buttonAction,
//     buttonColor,
// }) {
//     return TextButton.icon(
//         onPressed: buttonAction,
//         icon: Icon(buttonIcon, color: buttonColor,),
//         label: Text(buttonText),
//       );
//   }

  @override
  Widget build(BuildContext context) {

    Widget verticalDivider =           VerticalDivider(
      thickness: 1,
      color: Colors.grey[500],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }
}
