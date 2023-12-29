import 'package:flutter/material.dart';
import 'package:purple_hats/screens/tanent_side/registeraion/welcome_screen.dart';

import 'constant/bottom_app_bar/bottom_navigation_app_bar.dart';
import 'constant/bottom_app_bar_worker_side/bottom_bar_worker_side.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BottomNavigationAppBarWorkerSide(),);
  }
}



