import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model1/Colors.dart';
import '../model1/ShowProdc.dart';
import '../model1/Text.dart';
import '../model1/paymentContainer.dart';
import '../model1/search.dart';
import 'Serveces.dart';
import 'about.dart';
import 'create ad.dart';

class HomeRow extends StatelessWidget {
  const HomeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Stack(
              children: [
                Image.asset("assets/backHome.png", fit: BoxFit.fill,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: lightgray,
                              shape: BoxShape.circle
                            ),
                            child:Icon(Icons.favorite_outline_sharp),
                          ),
                          SizedBox(width: 5,),
                          Search(),
                          Icon(Icons.notifications_sharp,color: gray,size: 35,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: (){
                            Get.to(Services());
                          },
                            child: Text1(
                                text: "About Us",
                                textColor: darkblue,
                                FonSize: 20),),
                          Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: pink,
                                boxShadow: [BoxShadow(
                                  color: pink.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 3),
                                )]
                            ),
                            child: InkWell(
                              onTap: (){
                                Get.to(AboutUs());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text1(
                                      text: "Details",
                                      textColor: white,
                                      FonSize: 15),
                                  Icon(Icons.navigate_next_outlined, color: white,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: (){
                            Get.to(Services());
                          },
                            child: Text1(
                              text: "Serveces",
                              textColor: darkblue,
                              FonSize: 20),),
                          Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: pink,
                                boxShadow: [BoxShadow(
                                  color: pink.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 3),
                                )]
                            ),
                            child: InkWell(
                              onTap: (){
                                Get.to(CreateAd());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text1(
                                      text: "Create Ad",
                                      textColor: white,
                                      FonSize: 15),
                                  Icon(Icons.add, color: white,)
                                ],
                              ),
                            ),
                            ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: size.width,
                        height: 60,
                        color: Colors.transparent,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            PaymentContainer(
                              PayName: 'Payment method',
                              photo: "assets/daf3.png",
                            ),
                            SizedBox(width: 40,),
                            PaymentContainer(
                                photo: "assets/madfo3.png",
                                PayName: "Payments"),
                            SizedBox(width: 40,),
                            PaymentContainer(
                                photo: "assets/naql.png",
                                PayName: "moving baggage")
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text1(
                              text: "Our Real Estate",
                              textColor: darkblue,
                              FonSize: 20),
                          Text1(
                              text: "See all",
                              textColor: pink,
                              FonSize: 20)

                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ShowProductRow(
                                AkarNam: "Akar Name",
                                Img: "assets/home1.png",
                                Price: "40000\$",
                                Description: "This text is an example of text that can be replaced in the same space",
                              ),
                              SizedBox(width: 20,),
                              ShowProductRow(
                                AkarNam: "Akar Name",
                                Img: "assets/home2.png",
                                Price: "40000\$",
                                Description: "This text is an example of text that can be replaced in the same space",
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ShowProductRow(
                                AkarNam: "Akar Name",
                                Img: "assets/home3.png",
                                Price: "40000\$",
                                Description: "This text is an example of text that can be replaced in the same space",
                              ),
                              SizedBox(width: 20,),
                              ShowProductRow(
                                AkarNam: "Akar Name",
                                Img: "assets/home4.png",
                                Price: "40000\$",
                                Description: "This text is an example of text that can be replaced in the same space",
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
