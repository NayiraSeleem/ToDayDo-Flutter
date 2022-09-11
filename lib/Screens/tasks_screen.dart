// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:todaydo_app/Screens/add_task_screen.dart';
import 'package:todaydo_app/models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen((newTaskTitle) {
                    // setState(() {
                    //   tasks.add(
                    //     Task(name: newTaskTitle),
                    //   );
                    //   Navigator.pop(context);
                    // });
                  }),
                ),
              ),
            ),
          );
        },
        backgroundColor: Color(0xffFFC090),
        child: Icon(Icons.add),
      ),
      backgroundColor: Color(0xff7FB77E),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Color(0xffF7F6DC),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'ToDayDo',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffF7F6DC),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xffF7F6DC),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF7F6DC),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
