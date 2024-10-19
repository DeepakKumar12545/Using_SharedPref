import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_usefor/home.dart';
import 'package:shared_usefor/splesh-screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final name = TextEditingController();
  final password = TextEditingController();
  String? saveNamed;
  String? savedPassword;
  void saveData()async{
    final dataallsave = await SharedPreferences.getInstance();
        await dataallsave.setString("name", name.text.toString());
        await dataallsave.setString("password", password.text.toString());
      saveNamed = name.text.toString();
      savedPassword = password.text.toString();
       Get.snackbar(
      'Success',
      'Data saved successfully!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
      setState(() {
        
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              ),
          
              const SizedBox(height: 10,),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderSide: const BorderSide(
          color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(12)
              )
            ),
          ),
          const SizedBox(height: 25,),
          ElevatedButton(onPressed: saveData, child: const Text("Save")),
    if(saveNamed!= null && savedPassword!=null)...[
      Text("Saved Name${saveNamed}"),
      Text("Saved Password${savedPassword}")
    ],
          
            //  ElevatedButton(onPressed: (){
              //  Get.to(Home(),arguments: {
  //  'name':name.text.toString(),
  //  'password': password.text.toString()
    //  });

        //  
            //  }, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}

   //  var shared= await SharedPreferences.getInstance();
   //  shared.getBool(SpleshScreenState.KEYNAMEE);