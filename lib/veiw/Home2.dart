import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model1/Colors.dart';
import '../model1/ShowProductColumn.dart';
import '../model1/search.dart';

class HomeColumn extends StatelessWidget {
  const HomeColumn({Key? key}) : super(key: key);

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
                      Column(
                        children: [
                          ShowProductColumn(
                            Imag: "assets/home1.png",
                            AkarName: 'Akar Name',
                            Descrip: 'This text is an example of text that can be replaced in the same space',
                            Pric: '40000\$',
                          ),
                          SizedBox(height: 20,),
                          ShowProductColumn(
                            Imag: "assets/home2.png",
                            AkarName: 'Akar Name',
                            Descrip: 'This text is an example of text that can be replaced in the same space',
                            Pric: '40000\$',
                          ),
                          SizedBox(height: 20,),
                          ShowProductColumn(
                            Imag: "assets/home3.png",
                            AkarName: 'Akar Name',
                            Descrip: 'This text is an example of text that can be replaced in the same space',
                            Pric: '40000\$',
                          ),
                          SizedBox(height: 20,),
                          ShowProductColumn(
                            Imag: "assets/home4.png",
                            AkarName: 'Akar Name',
                            Descrip: 'This text is an example of text that can be replaced in the same space',
                            Pric: '40000\$',
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
