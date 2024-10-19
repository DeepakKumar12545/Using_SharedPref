import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final name = TextEditingController();
  static const String KEYNAME = "name";
  var nameValue =  "No value Saved";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setGetDataShared();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Shared Pref"),
      ),
      body: Container(
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    )
                  )
                ),
              ),
              const SizedBox(
                height: 11,
              ),

              
              ElevatedButton(onPressed: ()async{
                String _name= name.text.toString();
                var fref = await SharedPreferences.getInstance();
                fref.setString(KEYNAME, name.text.toString());
              }, child: const Text("Save")),
              Text(nameValue),
            ],
          ),
        ),
      ),
    );
  }
  void setGetDataShared() async{
  var pref = await SharedPreferences.getInstance();
 var getName = pref.getString(KEYNAME);
     nameValue = getName ?? "No Value Saved";
     setState(() {
       
     });
}
}




