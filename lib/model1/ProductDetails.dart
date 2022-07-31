
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Buttom.dart';
import 'Colors.dart';
import 'Text.dart';


class ProductDetails extends StatelessWidget {
  final List<String> imagesList = [
    'assets/home5.png',
    'assets/home4.png',
    'assets/home3.png',
  ];
  @override
  Widget build(BuildContext context) {
    var getScreenHeight = MediaQuery.of(context).size.height/1.2;
    Size size=MediaQuery.of(context).size;
    return Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: getScreenHeight,
                enlargeCenterPage: true,
                autoPlay: false,
                viewportFraction: 2.0
            ),
            items: imagesList
                .map(
                  (item) => Container(
                    width: size.width,
                  child:  FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset(item),
                  )
              ),
            ).toList(),
          ),
          DraggableScrollableSheet(
              minChildSize: 0.4,
              maxChildSize: 0.5,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration:  BoxDecoration(
                    color: darkblue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Scrollbar(
                    child:ListView.builder(
                      controller: scrollController,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding:  EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  width: 100,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: gray,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text1(
                                      text: "Akar Name",
                                      textColor: white,
                                      FonSize: 20),
                                  SizedBox(width: 120,),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: lightgray,
                                        shape: BoxShape.circle
                                    ),
                                    child:Icon(Icons.favorite_outline_sharp),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text1(
                                    text: "40000\$",
                                    textColor: pink,
                                    FonSize: 15),
                              ),
                              SizedBox(height: 10,),
                              Text1(
                                  text: "This text is an example of text that can be replaced in the same space",
                                  textColor: softgray,
                                  FonSize: 10),
                              SizedBox(height: 30,),
                              Buttom(
                                Size: 15,
                                buttomText: 'Ejar',
                                buttomColor: white,
                                buttomTextColor: darkblue,)
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              }),
        ]
    );
  }
}
