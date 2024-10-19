import 'package:flutter/material.dart';

class SearchHome extends StatefulWidget {
  const SearchHome({super.key});

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  final searchController = TextEditingController();
  String save = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Search Page"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: searchController,
            onChanged: (String? value){
              setState(() {
                save = value.toString();
              });
            },
            decoration: InputDecoration(
              hintText: "You Can Search",
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,width: 5,
                ),
                borderRadius: BorderRadius.circular(22)
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 500,
              itemBuilder: (context, index,){
               late String data = index.toString();
               if(searchController.text.isEmpty){
                         return ListTile(
         title: const Text("Mango"),
         subtitle: Text("Price data"+data.toString()),
         leading: const Icon(Icons.man_2_sharp),
       );
               }else if(data.toLowerCase().contains(searchController.text.toLowerCase())){
                      return ListTile(
         title: const Text("Mango"),
         subtitle: Text("Price data"+data.toString()),
         leading: const Icon(Icons.man_2_sharp),
      );
               }
               else{
                return Container();
               }
               
            }),
          )
        ],
      ),
    );
  }
}