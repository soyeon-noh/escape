import 'package:escape/screen/hint_screen.dart';
import 'package:escape/screen/home_screen.dart';
import 'package:escape/screen/document_screen.dart';
import 'package:escape/screen/memo_screen.dart';
import 'package:flutter/material.dart';

import 'layout/main_layout.dart';

void main() {
  runApp(
    MaterialApp(
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
