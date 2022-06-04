import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xinproj/colors/colours_list.dart';
import 'package:xinproj/colors/pinkpurple_grad.dart';
import 'package:xinproj/start/globalvars.dart';

//this is the app bar
AppBar pinkBar(BuildContext context) {
  return AppBar(
    //leading goes here

    actions: [
      //on right hands side added buttons,
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
            style: GoogleFonts.andadaPro(
              fontSize: 22,
              color: gold,
              fontWeight: FontWeight.w500,
              shadows: [
                Shadow(
                  offset: Offset(6.0, 8.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(255, 25, 25, 25).withOpacity(0.5),
                ),
              ],
              // style: TextStyle(
              //   fontFamily: 'blkros',
              //   color: textgreyblue,
              //   letterSpacing: 1.2,
              //   fontWeight: FontWeight.w400,
              //   fontSize: 80,
              //   shadows: [
              //     Shadow(
              //       offset: Offset(6.0, 8.0),
              //       blurRadius: 8.0,
              //       color: Color.fromARGB(255, 25, 25, 25).withOpacity(0.5),
              //     ),
              //   ],
              // ),
            ),
          ),
        ],
      ),
    ),
  );
}
