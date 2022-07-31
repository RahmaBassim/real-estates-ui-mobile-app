import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model1/Buttom.dart';
import '../model1/Colors.dart';
import '../model1/Text.dart';
import '../model1/TextFielf.dart';


class Register extends StatelessWidget {
  TextEditingController Name=TextEditingController();
  TextEditingController Email=TextEditingController();
  TextEditingController Phone=TextEditingController();
  TextEditingController Password=TextEditingController();
  bool x=true;
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
                              text: "Create New Account",
                              textColor: softgray,
                              FonSize: 20,
                            ),
                          ),
                          SizedBox(height: 10,),
                          InputClass(
                            HintText: "Enter Full Name",
                            LableText: "Name",
                            type: TextInputType.text,
                            controller: Name,
                            suffix: false,
                          ),
                          SizedBox(height: 10,),
                          InputClass(
                            HintText: "Enter Phone Number",
                            LableText: "Phone",
                            type: TextInputType.phone,
                            controller: Phone,
                            suffix: false,
                          ),
                          SizedBox(height: 10,),
                          InputClass(
                            HintText: "Enter Your Email",
                            LableText: "Email",
                            type: TextInputType.emailAddress,
                            controller: Email,
                            suffix: false,
                          ),
                          SizedBox(height: 10,),
                          InputClass(
                            HintText: "Enter Password",
                            LableText: "Password",
                            type: TextInputType.text,
                            controller: Password,
                            suffix: true,
                          ),
                          SizedBox(height: 10,),
                          InputClass(
                            HintText: "Repeat Password",
                            LableText: "Repeat Password",
                            type: TextInputType.text,
                            controller: Password,
                            suffix: true,
                          ),
                          SizedBox(height: 10,),
                          Buttom(
                            buttomText: 'Create Account',
                            buttomColor: darkblue,
                            buttomTextColor: white,
                            Size: 15,
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text1(
                                    text: " SignIn with",
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
