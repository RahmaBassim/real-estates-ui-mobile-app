import 'package:flutter/material.dart';

import '../model1/Colors.dart';
import '../model1/Text.dart';
import 'Colors.dart';

class FifthContainer extends StatelessWidget {
  const FifthContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("Images/Mask Group 5.png")
        )
      ),
      child: Container(
        width: size.width,
        height: 400,
        color: gray.withOpacity(0.6),
        child: Center(
          child: Stack(alignment: Alignment.center,
            children: [
              Container(
                width: 250,
                height: 180,
                decoration: BoxDecoration(
                  color: gray.withOpacity(0.7),
                  border: Border.all(color: white,width: 1),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              Align(
                alignment: Alignment(0,-0.6),
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("Images/Ellipse 2.png")
                    )
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0,-0.1),
                  child: Text1(text: "Mohamed Ali", textColor: black, FonSize: 20, FontWeight: FontWeight.bold,)),
              Align(
                alignment: Alignment(0,0),
                child: Text1(text: "هذا النص هو مثال لنص يمكن أن يستبدل ",
                  textColor: black, FonSize: 10, FontWeight: FontWeight.bold,),
              ),
              Align(
                alignment: Alignment(0.15,0.1),
                child: Text1(text: " في نفس المساحة، لقد تم توليد",
                  textColor: black, FonSize: 10, FontWeight: FontWeight.bold,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
