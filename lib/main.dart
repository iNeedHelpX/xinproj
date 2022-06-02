import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:xinproj/start/start.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

//change this here
  runApp(Start());
}
