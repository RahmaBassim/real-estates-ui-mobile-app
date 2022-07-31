import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Colors.dart';
import 'ProductDetails.dart';
import 'Text.dart';

class ShowProductColumn extends StatelessWidget {
  final Imag;
  final String Descrip;
  final String Pric;
  final String AkarName;

  const ShowProductColumn({Key? key,
    required this.Imag,
    required this.Descrip,
    required this.Pric,
    required this.AkarName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width/0.5,
      height: 200,
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
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: size.width/2.5,
              height: 170,
              decoration: BoxDecoration(
                color: pink,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(Imag)
                ),
              ),
            ),
            SizedBox(width: 5,),
            Container(
              width: size.width/2.5,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text1(
                          text: AkarName,
                          textColor: gray,
                          FonSize: 15),
                      SizedBox(width: 25,),
                      Icon(Icons.favorite_border, color: gray,)
                    ],
                  ),
                  Text(
                    Descrip,
                    style: TextStyle(color: softgray, fontSize: 10,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text1(text: Pric,
                        textColor: pink,
                        FonSize: 10),
                      Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: gray),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: (){
                              Get.to(ProductDetails());
                            }, child:
                          Text1(
                            text: "Show",
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
      ),
    );
  }
}
