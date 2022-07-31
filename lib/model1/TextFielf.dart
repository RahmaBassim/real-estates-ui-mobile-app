import 'package:flutter/material.dart';

import 'Colors.dart';

class InputClass extends StatefulWidget {

  final String HintText;
  final String LableText;
  final TextInputType type;
  final bool suffix;
  final TextEditingController controller;

  const InputClass({Key? key,
    required this.HintText,
    required this.LableText,
    required this.type,
    required this.suffix,
    required this.controller,
  }) : super(key: key);

  @override
  State<InputClass> createState() => _InputClassState();
}

class _InputClassState extends State<InputClass> {
  bool x=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          )]
      ),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.type,
        obscureText: widget.suffix?x:false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: widget.HintText,
          labelText: widget.LableText,
          suffix: widget.suffix?IconButton(
              onPressed: (){
                x=!x;
                setState(() {

                });
              },
              icon:Icon(Icons.remove_red_eye,color: x?Colors.black:darkblue,)
          ):null
        ),
      ),
    );
  }
}


