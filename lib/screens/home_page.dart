import 'package:flutter/material.dart';
import 'package:to_do_app/util/to_do_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList=[
    ['Make Tutorial',false],
    ['Flatter',false]
  ];
  void checkBoxChanged(bool? value,int index){
    setState(() {
      toDoList[index][1]=!toDoList[index][1];
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text('To Do',
          style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellow[400],
        centerTitle: true,
        elevation: 0,
      ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDOList(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChange: (value)=>checkBoxChanged(value, index),
          );

        },

      ),

    );
  }
}
