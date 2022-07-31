import 'package:flutter/material.dart';
import 'Colors.dart';
import 'Text.dart';

class Packag extends StatelessWidget {
  const Packag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      width: 100,
      height: 180,
      decoration: BoxDecoration(
          color: white,
          border: Border.all(color: lightgray,width: 2),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          )]
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: gray,width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/bakage.png")
                )
              ),
            ),
          ),
          Container(
            width: 210,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text1(
                    text: "Package Name",
                    textColor: gray,
                    FonSize: 20),),
                Text1(text:
                "This text is an example of a text that can be replaced in the same space. This text was generated from the Arabic text generator",
                    textColor: softgray,
                    FonSize: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text1(
                        text: "40000\$",
                        textColor: pink,
                        FonSize: 15),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(color: gray),
                        borderRadius: BorderRadius.circular(5),
                          boxShadow: [BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          )]
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: (){},
                          child:
                        Text1(
                          text: "Buy",
                          textColor: gray,
                          FonSize: 10,
                        ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
