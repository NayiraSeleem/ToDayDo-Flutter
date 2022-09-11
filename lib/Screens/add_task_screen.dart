import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color(0xffF7F6DC),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffFFC090),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: Text('Add'),
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff7FB77E),
                primary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
