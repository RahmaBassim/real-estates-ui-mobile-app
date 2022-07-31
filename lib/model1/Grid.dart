import 'package:flutter/material.dart';

import 'Colors.dart';
import 'Text.dart';

class Grid extends StatelessWidget {

  final List<String> imagesList = [
    'assets/madfo3.png',
    'assets/naql.png',
    'assets/daf3.png',
    'assets/madfo3.png',
    'assets/naql.png',
    'assets/daf3.png',
  ];

  final List<String> Text=[
    "Payments",
    "moving baggage",
    "Payment method",
    "Payments",
    "moving baggage",
    "Payment method",
  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 10, right: 10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(6, (index) {
        return Container(
          decoration: BoxDecoration(
            color: lightgray,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: gray,width: 1.5),
              boxShadow: [BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 1),
              )]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(imagesList[index])
                  )
                ),
              ),
              Center(
                child: Text1(
                    text: Text[index],
                    textColor: gray,
                    FonSize: 15),
              )
            ],
          ),
        );
      }),
    );
  }
}
