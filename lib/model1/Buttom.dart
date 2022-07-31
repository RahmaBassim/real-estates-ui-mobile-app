import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../veiw/convex.dart';


class Buttom extends StatelessWidget {
  final Color buttomColor;
  final Color buttomTextColor;
  final String buttomText;
  final double Size;

  const Buttom({Key? key,
    required this.buttomColor,
    required this.buttomTextColor,
    required this.buttomText,
    required this.Size,
 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
          color:buttomColor ,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          )]
      ),
      child: TextButton(
        onPressed: (){
          Get.to(convex());
        },
        child: Text(
          buttomText,
          style: TextStyle(
            color: buttomTextColor,
            fontSize: Size,
          ),
        ),
      ),
    );
  }
}
