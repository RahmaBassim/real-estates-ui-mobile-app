import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Colors.dart';
import 'ProductDetails.dart';
import 'Text.dart';

class ShowProductRow extends StatelessWidget {
  final String Price;
  final String AkarNam;
  final String Description;
  final Img;

  const ShowProductRow({Key? key,
    required this.Price,
    required this.Img,
    required this.Description,
    required this.AkarNam,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width/2.4 ,
      height: 260,
      decoration: BoxDecoration(
        color: lightgray,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft:Radius.circular(10),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Img)
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text1(
                  text: AkarNam,
                  textColor: gray,
                  FonSize: 15),
              Icon(Icons.favorite_border, color: gray,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              Description,
              style: TextStyle(color: softgray, fontSize: 10,),
              softWrap: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 60,
                height: 25,
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: gray),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
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
              ),
              Text1(text: Price,
                  textColor: pink,
                  FonSize: 10)
            ],
          )
        ],
      ),
    );
  }
}
