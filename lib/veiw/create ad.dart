import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../model1/Colors.dart';
import '../model1//Text.dart';


class CreateAd extends StatefulWidget {
  const CreateAd({Key? key}) : super(key: key);

  @override
  State<CreateAd> createState() => _CreateAdState();
}

class _CreateAdState extends State<CreateAd> {
  File? _image;

  final _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container
                (
                width: size.width ,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text1(
                          text: "Create Ad",
                          textColor: darkblue,
                          FonSize: 25),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: gray),
                            color: white,
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width/1.1,
                height: 150,
                color: lightgray,
                child: _image != null
                    ? Image.file(_image!, fit: BoxFit.cover): null
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text1(
                          text: "No more than 5 photos",
                          textColor: pink,
                          FonSize: 13),
                    ),
                    SizedBox(width: 100,),
                    IconButton(
                      icon: Icon(Icons.add_outlined,size: 35,),
                      onPressed: ()async{
                        final XFile? pickedImage =
                        await _picker.pickImage(source: ImageSource.gallery);
                        if (pickedImage != null) {
                          setState(() {
                            _image = File(pickedImage.path);
                          });
                        }
                      },
                    ) ,
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: size.width/1.1,
                height: 50,
                decoration: BoxDecoration(
                  color: lightgray,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text1(
                        text: "Ad Name",
                        textColor: gray,
                        FonSize: 15),
                  ),
                )
              ),
              SizedBox(height: 15,),
              Container(
                width: size.width/1.1,
                height: 50,
                decoration: BoxDecoration(
                  color: lightgray,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text1(
                        text: "Ad Details",
                        textColor: gray,
                        FonSize: 15),
                  ),
                )
              ),
              SizedBox(height: 15,),
              Container(
                width: size.width/1.1,
                height: 50,
                decoration: BoxDecoration(
                  color: lightgray,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text1(
                        text: "Akar Address",
                        textColor: gray,
                        FonSize: 15),
                  ),
                )
              ),
              SizedBox(height: 15,),
              Container(
                width: size.width/1.1,
                height: 50,
                decoration: BoxDecoration(
                  color: lightgray,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text1(
                          text: "Akar price per month",
                          textColor: gray,
                          FonSize: 15),
                      Icon(Icons.expand_more_sharp)
                    ],
                  ),
                )
              ),
              SizedBox(height: 15,),
              Container(
                  width: size.width/1.3,
                  height: 50,
                  decoration: BoxDecoration(
                    color: pink,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text1(
                          text: "create",
                          textColor: white,
                          FonSize: 15),
                    )
                  )
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
