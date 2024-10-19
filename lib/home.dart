import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Map<String, String> userData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passing Data here"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Name${userData['name']}',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight:FontWeight.bold),),
           Text('Pasword${userData['password']}',style: TextStyle(
            color: Colors.red,fontSize: 18,fontWeight: FontWeight.w500
           ),),
          ElevatedButton(onPressed: (){

          }, child:Text("Button") ),
        ],
      ),
    );
  }
}