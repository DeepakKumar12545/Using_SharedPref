import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_usefor/login-screen.dart';
import 'package:shared_usefor/modeldata.dart';
import 'package:shared_usefor/remove.dart';
import 'package:shared_usefor/search-home.dart';
import 'package:shared_usefor/splesh-screen.dart';

import 'home-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Removee(),
    );
  }
}
