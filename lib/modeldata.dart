import 'package:flutter/material.dart';

class ModelData extends StatefulWidget {
  const ModelData({super.key});

  @override
  State<ModelData> createState() => _ModelDataState();
}

class _ModelDataState extends State<ModelData> {
  var data = [
    {
      'name': "Deepak",
      'age': 25,
      'dist': "Bucar",
    },
    {
      'name': "Deepak",
      'age': 25,
      'dist': "Bucar",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Model Data"),
      ),
      body: Column(
        children: data.map((e) {
          return ListTile(
            title: Text(e['name'].toString()),
          );
        },).toList(),
      ),
    );
  }
}