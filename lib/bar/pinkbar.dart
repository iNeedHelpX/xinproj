import 'package:flutter/material.dart';
import 'package:xinproj/colors/colours_list.dart';
import 'package:xinproj/colors/pinkpurple_grad.dart';
import 'package:xinproj/start/globalvars.dart';

AppBar pinkBar(BuildContext context) {
  return AppBar(
    leading: Padding(
        padding: EdgeInsets.all(5),
        child: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
        )),

    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: IconButton(
          icon: Icon(
            Icons.shopping_bag_rounded,
            color: Colors.purpleAccent[60],
            size: 30,
          ),
          onPressed: () {
            // bottomSheet(context);
          },
        ),
      ),
    ],

    flexibleSpace: ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: pinkPurpleGrad(),
        ),
      ),
    ),
    elevation: 16,
    shadowColor: textgreyblue,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    //set size of appbar. This is sort of big
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: Stack(
        children: [
          Text(
            "Swoon",
            style: TextStyle(
              fontFamily: 'blkros',
              color: textgreyblue,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w400,
              fontSize: 80,
              shadows: [
                Shadow(
                  offset: Offset(6.0, 8.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(255, 25, 25, 25).withOpacity(0.5),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
