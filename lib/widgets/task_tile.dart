import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() listTileDelete;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange,
      required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Color(0xff1A4D2E),
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Color(0xff7FB77E),
        value: isChecked,
        onChanged: checkboxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}
