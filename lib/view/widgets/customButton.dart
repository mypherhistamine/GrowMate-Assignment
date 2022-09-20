import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? heigtRatio;
  final double? widthRatio;
  final String? text;
  final Color? textcolor;
  final String? buttonText;
  final Color? buttonColor;

  // ignore: use_key_in_widget_constructors
  const CustomButton(
      {this.heigtRatio,
      this.widthRatio,
      this.text,
      this.textcolor,
      this.buttonText,
      this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 4),
          child: Text(
            text!,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: heigtRatio! * 22,
          width: widthRatio! * 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: buttonColor),
            onPressed: () {},
            child: Text(
              '$buttonText',
              style: TextStyle(fontWeight: FontWeight.bold, color: textcolor),
            ),
          ),
        ),
      ],
    );
  }
}
