import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model1/Text.dart';
import '../model1/Colors.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
              image: AssetImage("Images/Mask Group 1.png")
          )
      ),
      child: Container(
        width: size.width,
        height: 200,
        color: Colors.grey.withOpacity(0.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text1(
                  text: "هذا النص هو مثال لنص ",
                  textColor:white,
                  FonSize: 15,
                  FontWeight: FontWeight.bold,
              ),
              Text1(
                  text: " لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص ",
                  textColor: white,
                  FonSize: 10,
              ),
              Text1(
                  text: " هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة ",
                  textColor: white,
                  FonSize: 10,
              ),
            ],
          )
        ),
      ),
    );
  }
}
