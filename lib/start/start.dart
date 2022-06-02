import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xinproj/start/route_generator.dart';

class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },

        //the frame for the dapp
        // child: AppSetup(),
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
