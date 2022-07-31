import 'package:flutter/material.dart';

import '../model1/Colors.dart';
import '../model1/FifthContainer.dart';
import '../model1/FirstContainer.dart';
import '../model1/FourthContainer.dart';
import '../model1/SecondContainer.dart';
import '../model1/SixthContainer.dart';
import '../model1/Text.dart';
import '../model1/ThirdContainer.dart';


class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FirstContainer(),
              Align(
                alignment: Alignment.centerRight,
                child: Text1(
                    text: "نبذه عنا",
                    textColor: black,
                    FonSize: 25),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text1(
                      text: "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد",
                      textColor: black,
                      FonSize: 10),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text1(
                      text: " تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد",
                      textColor: black,
                      FonSize: 10),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text1(
                      text: "مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة",
                      textColor: black,
                      FonSize: 10),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text1(
                      text: "عدد الحروف التى يولدها التطبيق.",
                      textColor: black,
                      FonSize: 10),
                ),
              ),
              SecondContainer(),
              SizedBox(height: 20,),
              ThirdContainer(),
              FourthContainer(),
              FifthContainer(),
              SixthContainer(),
            ],

          ),
        ),
      ),
    );
  }
}