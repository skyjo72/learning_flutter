import 'package:flutter/material.dart';
import 'package:to_do_app/views/add_task_view.dart';
import 'package:to_do_app/views/header_view.dart';
import 'package:to_do_app/views/task_info_view.dart';
import 'package:to_do_app/views/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: const [
        Expanded(flex: 1, child: HeaderView()),
        Expanded(flex: 1, child: TaskInfoView()),
        Expanded(flex: 7, child: TaskListView())
      ])),
      floatingActionButton: const AddTaskView(),
    );
  }
}
