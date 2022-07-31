import 'package:flutter/material.dart';


class Text1 extends StatelessWidget {
  final String text;
  final Color textColor;
  final double FonSize;
  final  FontWeight;

  const Text1({Key? key,
    required this.text,
    required this.textColor,
    required this.FonSize,
    this.FontWeight,
  }
    ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: FonSize,
        fontWeight: FontWeight
      ),
      softWrap: true,
    )
    ;
  }
}

