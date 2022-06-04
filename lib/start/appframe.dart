import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:xinproj/bar/baricons.dart';
import 'package:xinproj/bar/pinkbar.dart';
import 'package:xinproj/colors/colours_list.dart';
import 'package:xinproj/pages/grocerypage.dart';
import 'package:xinproj/pages/homepage.dart';
import 'package:xinproj/pages/shoppage.dart';
import 'package:xinproj/start/globalvars.dart';

class AppFrame extends StatefulWidget {
  AppFrame({Key? key}) : super(key: key);

  @override
  _AppFrameState createState() => _AppFrameState();
}

// int _selectedDestination = 0;

class _AppFrameState extends State<AppFrame> {
  //this directs to the shopping page
  int selectedpage = 1;

//list of pages that one can navigate to using the navbar
  final _pageOptions = [
    //pages
    ShoppingPage(),
    HomePage(),
    GroceryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      //drawer: LoggedInDrawer(),
      backgroundColor: bg,
      appBar: pinkBar(context),
      resizeToAvoidBottomInset: true,
      body: _pageOptions[selectedpage],
      bottomNavigationBar: buildCurvedNavigationBar(),
    );
  }

  Future<dynamic> bottomSheet(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        context: context,
        builder: (BuildContext context) {
          //the pink/purple container that hosts the login
          //return LoginContainer();
          return Text('need to replace asap julia');
        });
  }

//the nav bar at the bottom
  CurvedNavigationBar buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      index: selectedpage,
      buttonBackgroundColor: tabicon,
      color: tabicon,
      backgroundColor: bg.withOpacity(0.7),
      animationCurve: Curves.linearToEaseOut,
      items: listBarIcons(),
      onTap: (index) {
        setState(() {
          selectedpage =
              index; // changing selected page as per bar index selected by the user
        });
      },
    );
  }
}
