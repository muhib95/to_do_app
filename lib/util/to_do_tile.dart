import 'package:flutter/material.dart';

class ToDOList extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChange;

  ToDOList(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Checkbox(value: taskCompleted, onChanged: onChange,activeColor: Colors.black,),
              Text(taskName),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
