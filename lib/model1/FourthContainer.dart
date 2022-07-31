import 'package:flutter/material.dart';

import '../model1/Text.dart';
import 'Colors.dart';


class FourthContainer extends StatelessWidget {
  const FourthContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text1(text: "الباقات", textColor: black, FonSize: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width/2.2,
                height: 250,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text1(
                      text: "50JOD",
                      textColor: pink,
                      FonSize: 15,
                      FontWeight: FontWeight.bold,
                    ),
                    Text1(
                      text: "Basic",
                      textColor: black,
                      FonSize: 15,
                      FontWeight: FontWeight.bold,
                    ),
                    Text1(
                      text: "هذا النص هو مثال لنص",
                      textColor: gray,
                      FonSize: 12,
                      FontWeight: FontWeight.bold,
                    ),
                    Text1(
                      text: "يمكن أن يستبدل في نفس المساحة",
                      textColor: gray,
                      FonSize: 10,
                      FontWeight: FontWeight.bold,
                    ),
                    Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        color: darkblue,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: darkblue.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(2, 0), // changes position of shadow
                    ),
                  ],
                      ),
                      child: Center(child: Text1(text: "اختيار", textColor: white, FonSize: 20)),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width/2.2,
                height: 250,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text1(
                      text: "50JOD",
                      textColor: pink,
                      FonSize: 15,
                      FontWeight: FontWeight.bold,
                    ),
                    Text1(
                      text: "Advanced",
                      textColor: black,
                      FonSize: 15,
                      FontWeight: FontWeight.bold,
                    ),
                    Text1(
                      text: "هذا النص هو مثال لنص",
                      textColor: gray,
                      FonSize: 12,
                      FontWeight: FontWeight.bold,
                    ),
                    Text1(
                      text: "يمكن أن يستبدل في نفس المساحة",
                      textColor: gray,
                      FonSize: 10,
                      FontWeight: FontWeight.bold,
                    ),
                    Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        color: darkblue,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: darkblue.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(2, 0), // changes position of shadow
                    ),
                  ],
                      ),
                      child: Center(child: Text1(text: "اختيار", textColor: white, FonSize: 20)),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: size.width/2.2,
            height: 250,
            decoration: BoxDecoration(
              color: white,
              border: Border.all(color: pink,width: 2),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: pink.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(2, 0), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text1(
                  text: "50JOD",
                  textColor: pink,
                  FonSize: 15,
                  FontWeight: FontWeight.bold,
                ),
                Text1(
                  text: "Standard",
                  textColor: black,
                  FonSize: 15,
                  FontWeight: FontWeight.bold,
                ),
                Text1(
                  text: "هذا النص هو مثال لنص",
                  textColor: gray,
                  FonSize: 12,
                  FontWeight: FontWeight.bold,
                ),
                Text1(
                  text: "يمكن أن يستبدل في نفس المساحة",
                  textColor: gray,
                  FonSize: 10,
                  FontWeight: FontWeight.bold,
                ),
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: darkblue,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: darkblue.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(2, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(child: Text1(text: "اختيار", textColor: white, FonSize: 20)),
                )
              ],
            ),
          ),
          Container(
            width: 180,
            height: 60,
            decoration: BoxDecoration(
              color: softgray,
              boxShadow: [
                BoxShadow(
                  color: gray.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(2, 0), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(child: Text1(text: "المزيد", textColor: white, FonSize: 20,FontWeight: FontWeight.bold,)),
          )
        ],
      ),
    );
  }
}
