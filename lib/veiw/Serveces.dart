import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model1/Colors.dart';
import '../model1/Grid.dart';
import '../model1/Text.dart';



class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: size.width ,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text1(
                      text: "Services",
                      textColor: darkblue,
                      FonSize: 25),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: gray),
                      color: white,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.navigate_next),
                  )
                ],
              ),
            ),
          ),
          Grid()
        ],
      ),
    );
  }
}
