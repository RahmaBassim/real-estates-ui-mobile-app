import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model1/Colors.dart';
import '../model1/Text.dart';


class SixthContainer extends StatelessWidget {
  const SixthContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 500,
      color: darkblue,
      child: Column(
        children: [
          SizedBox(height: 15,),
          Text1(
              text: "هذا النص هو مثال لنص يمكن أن يستبدل",
              textColor: softgray,
              FonSize: 13),
          Text1(
              text: " في نفس المساحة، لقد تم توليد هذا النص من",
              textColor: softgray,
              FonSize: 13),
          Text1(
              text: "مولد النص العربى،",
              textColor: softgray,
              FonSize: 13),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 200,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Images/Icon awesome-twitter.png")
                        )
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Images/Icon feather-instagram.png")
                        )
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Images/Icon awesome-facebook.png")
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width/2.2,
                height: 180,
                child: Column(
                  children: [
                    Text1(text: "اتصل بنا", textColor: white, FonSize: 20, FontWeight: FontWeight.bold,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text1(text: "01111111111", textColor: softgray, FonSize: 15, FontWeight: FontWeight.bold,),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("Images/Icon awesome-phone-alt.png")
                            )
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text1(text: "01122222222", textColor: softgray, FonSize: 15, FontWeight: FontWeight.bold,),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("Images/Icon awesome-phone-alt.png")
                            )
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width/2.2,
                height: 180,
                child: Column(
                  children: [
                    Text1(text: "روابط مختصرة", textColor: white, FonSize: 20, FontWeight: FontWeight.bold,),
                    Text1(text: "الرئيسية", textColor: softgray, FonSize: 15, FontWeight: FontWeight.bold,),
                    Text1(text: "خدماتنا", textColor: softgray, FonSize: 15, FontWeight: FontWeight.bold,),
                    Text1(text: "نبذة عنا", textColor: softgray, FonSize: 15, FontWeight: FontWeight.bold,),
                    Text1(text: "الباقات", textColor: softgray, FonSize: 15, FontWeight: FontWeight.bold,),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width/2.7,
                height: 65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("Images/available-on-the-app-store-design-template-98385290e2beb828145684eaaa450588_screen.png")
                  )
                ),
              ),
              Container(
                width: size.width/2.7,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("Images/images.png")
                  )
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
