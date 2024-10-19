import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_usefor/home-screen.dart';
import 'package:shared_usefor/login-screen.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => SpleshScreenState();
}

class SpleshScreenState extends State<SpleshScreen> {
  
  @override
  void initState() {
    super.initState();
     whereToGo();
  }

  // ignore: constant_identifier_names
  static const String KEYNAMEE ="name";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Splesh Screen",
          style: TextStyle(
            color: Colors.red,
            fontSize: 32,
            fontWeight: FontWeight.bold
          ),),
        ],
      ),
    );
  }

  // void whereToGo()async{
    // Timer(Duration(seconds: 2), (){
      // Get.to(HomePage());
    // });
  // }
// }
  void whereToGo() async{
  var shared = await SharedPreferences.getInstance();
  var igLogin = shared.getBool(KEYNAMEE);
  
  Timer(Duration(seconds: 2),(){
    // Get.offAll(HomePage());
    if(igLogin!= null){
      if(igLogin){
        Get.offAll(HomePage());
      }else{
        Get.offAll(HomePage());
      }
    }else{
      Get.offAll(LoginScreen());
    }
  });
  } 
  
  }
 
// 
// 



