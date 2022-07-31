import 'package:flutter/material.dart';
import 'Colors.dart';
import 'Text.dart';

class PaymentContainer extends StatelessWidget {
  final photo;
  final String PayName;

  const PaymentContainer({Key? key,
    required this.photo,
    required this.PayName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: white,
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 5),
          )]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(photo),
          Text1(
              text: PayName,
              textColor: gray,
              FonSize: 15)
        ],
      ),
    );
  }
}
