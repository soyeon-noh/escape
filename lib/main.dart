import 'package:escape/screen/hint_screen.dart';
import 'package:escape/screen/home_screen.dart';
import 'package:escape/screen/document_screen.dart';
import 'package:escape/screen/memo_screen.dart';
import 'package:flutter/material.dart';

import 'layout/main_layout.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MainLayout(),
        '/hint': (context) => const HintScreen(),
        '/memo': (context) => const MemoScreen(),
        '/map': (context) => const DocumentScreen(),
      },
    ),
  );
}
