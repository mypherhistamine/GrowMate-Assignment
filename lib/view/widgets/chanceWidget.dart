import 'package:assignment/view/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ChanceWidget extends StatelessWidget {
  const ChanceWidget({
    Key? key,
    required this.heightRatio,
    required this.widthRatio,
  }) : super(key: key);

  final double heightRatio;
  final double widthRatio;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightRatio * 87,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              transform: GradientRotation(90 * pi),
              colors: [Color(0xff2E20DB), Color(0xffE432C1)]),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(22),
            bottomRight: Radius.circular(22),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'CHANCE',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                // Spacer(),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      '11%',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_upward),
                    SizedBox(
                      width: widthRatio * 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Text('24H'), Text('+25495\$')],
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            //yes counter and rupees
            CustomButton(
              heigtRatio: heightRatio,
              widthRatio: widthRatio,
              text: '\$09',
              textcolor: Colors.black,
              buttonColor: const Color(0xff21FFAA),
              buttonText: "Yes",
            ),
            SizedBox(
              width: widthRatio * 30,
            ),
            //no counter and rupees
            CustomButton(
              heigtRatio: heightRatio,
              widthRatio: widthRatio,
              text: '\$89',
              buttonColor: const Color(0xffE432C1),
              buttonText: "No",
            )
          ]),
        ),
      ),
    );
  }
}
