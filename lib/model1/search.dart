import 'package:flutter/material.dart';

import 'Colors.dart';

class Search extends StatefulWidget {

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 40,
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
        controller: search,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffix: Icon(Icons.search,color: gray,),
          prefix: Icon(Icons.add_road)
        ),
        onChanged: (v) {
          setState(() {});
        },
      ),
    );
  }
}

