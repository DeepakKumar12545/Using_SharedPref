import 'package:flutter/material.dart';

class Removee extends StatefulWidget {
  const Removee({super.key});

  @override
  State<Removee> createState() => _RemoveeState();
}

class _RemoveeState extends State<Removee> {
  List<String> data =["Januray", "Faburary","March","April","May","Jun","Julay","August","Sitember","Octomber","November","December"];
 List<String> temsave=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Remove"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, int index){
          late String save = index.toString();
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Colors.orange,
            title: Text(data[index].toString()),
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  setState(() {
                        if(temsave.contains(data[index].toString())){
                temsave.remove(data[index].toString());
              }else{
                temsave.add(data[index].toString());
                print("Data");
                print(temsave.toString());
              }
                  });
                },
                child: Container(
                  height: 120,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: (temsave.contains(data[index].toString()))?Colors.green:Colors.red,
                  ),
                  child: Center(child: Text(temsave.contains(data[index].toString())?"Add":"Remove",))
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}