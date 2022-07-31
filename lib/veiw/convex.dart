import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../model1/Colors.dart';
import 'Home1.dart';
import 'Home2.dart';
import 'Packages.dart';
import 'Serveces.dart';
import 'create ad.dart';

class convex extends StatefulWidget {
  const convex({Key? key}) : super(key: key);

  @override
  State<convex> createState() => _convexState();
}

class _convexState extends State<convex> {
  int selectedPage = 0;
  final _pageOptions = [HomeRow(),Services(),HomeColumn(),Packages(),CreateAd()];
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: SafeArea(child: Scaffold(
        body: _pageOptions[selectedPage],
        bottomNavigationBar: ConvexAppBar(
            backgroundColor: white,
            color: gray,
            activeColor: gray,
            items: [
              TabItem(icon: Icons.view_list_sharp, title: 'Menu',),
              TabItem(icon: Icons.miscellaneous_services, title: 'Services'),
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.padding_rounded, title: 'Packag'),
              TabItem(icon: Icons.payments, title: 'Ads'),
            ],
            onTap: (int i ){
              setState(() {
                selectedPage = i;
              });
            }
        ),
      )),
    );
  }
}
