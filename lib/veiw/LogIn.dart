import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model1/Buttom.dart';
import '../model1/Colors.dart';
import '../model1/Text.dart';
import '../model1/TextFielf.dart';
import 'register.dart';
import 'Home1.dart';

class LogIn extends StatelessWidget {
  TextEditingController Email=TextEditingController();
  TextEditingController Password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Stack(
                children: [
                  Image.asset("assets/background.png", fit: BoxFit.fill,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(padding: EdgeInsets.all(30),
                      child:  Container(
                        width: 230,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/logo.png")
                          ),
                        ),
                      ),
                      ),
                      Align(
                       alignment: Alignment.topLeft,
                       child:  Text1(
                         text: "LogIn",
                         textColor: softgray,
                         FonSize: 20,
                       ),
                     ),
                      SizedBox(height: 10,),
                      InputClass(
                          HintText: "Enter your Email",
                          LableText: "Email",
                          type: TextInputType.emailAddress,
                          controller: Email,
                        suffix: false,
                      ),
                      SizedBox(height: 10,),
                      InputClass(
                        HintText: "Enter your Password",
                        LableText: "Password",
                        type: TextInputType.emailAddress,
                        controller: Password,
                        suffix: true,
                      ),
                      SizedBox(height: 10,),
                      Buttom(
                        buttomText: 'LogIn',
                        buttomColor: darkblue,
                        buttomTextColor: white,
                        Size: 25,
                      ),
                      Row(
                        children: [
                          Text1(
                              text: "If you don't have account,",
                              textColor: softgray,
                              FonSize: 10),
                          TextButton(
                              onPressed: (){
                                Get.to(Register());
                              },
                              child:Text1(
                                  text: "Create account",
                                  textColor: pink,
                                  FonSize: 10),
                          )
                        ],
                      ),
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text1(
                                text: "or LogIn with",
                                textColor: softgray,
                                FonSize: 10),
                            Image.asset("assets/google.png")
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
        ),
      )
    );
  }
}
