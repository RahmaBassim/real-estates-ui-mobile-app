import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Colors.dart';
import 'Text.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 450,
      color: softwhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text1(text: "خدماتنا", textColor: black, FonSize: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width/2.2,
                height: 180,
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: softgray,width: 2),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(2, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: size.width/2.2,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage("Images/madfo3.png")
                        )
                      ),
                    ),
                    Text1(
                        text: "مدفوعات",
                        textColor: gray,
                        FonSize: 15,
                      FontWeight: FontWeight.bold,
                    ),
                    Text1(
                      text: "هذا النص هو مثال لنص",
                      textColor: gray,
                      FonSize: 12,
                    ),
                    Text1(
                      text: "يمكن أن يستبدل في نفس المساحة",
                      textColor: gray,
                      FonSize: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width/2.2,
                height: 180,
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: softgray,width: 2),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(2, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: size.width/2.2,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage("Images/daf3.png")
                        )
                      ),
                    ),
                    Text1(
                        text: "طريقة الدفع",
                        textColor: gray,
                        FonSize: 15,
                      FontWeight: FontWeight.bold,
                    ),
                    Text1(
                      text: "هذا النص هو مثال لنص",
                      textColor: gray,
                      FonSize: 12,
                    ),
                    Text1(
                      text: "يمكن أن يستبدل في نفس المساحة",
                      textColor: gray,
                      FonSize: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: size.width/2.2,
            height: 180,
            decoration: BoxDecoration(
              color: white,
              border: Border.all(color: softgray,width: 2),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(2, 0), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: size.width/2.2,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage("Images/naql.png")
                      )
                  ),
                ),
                Text1(
                  text: "نقل العفش",
                  textColor: gray,
                  FonSize: 15,
                  FontWeight: FontWeight.bold,
                ),
                Text1(
                  text: "هذا النص هو مثال لنص",
                  textColor: gray,
                  FonSize: 12,
                ),
                Text1(
                  text: "يمكن أن يستبدل في نفس المساحة",
                  textColor: gray,
                  FonSize: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
