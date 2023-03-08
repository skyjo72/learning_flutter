import 'package:flutter/material.dart';
import '../models/task_model.dart';
import '../models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];
  User user = User("Jo Jo");

  Color ctrLvl1 = Colors.grey.shade50;
  Color ctrLvl2 = Colors.grey.shade200;
  Color ctrLvl3 = Colors.grey.shade800;
  Color ctrLvl4 = Colors.grey.shade900;

  int get numTask => tasks.length;

  int get taskCompleted => tasks.where((task) => !task.complete).length;

  bool getTaskValue(int taskIndex) => tasks[taskIndex].complete;

  String getTaskTitle(int taskIndex) => tasks[taskIndex].title;

  void deleteTask(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void deleteAllTask() {
    tasks.clear();
    notifyListeners();
  }

  void deleteCompletedTask() {
    tasks.removeWhere((task) => task.complete);
    notifyListeners();
  }

  void setTaskValue(int taskIndex, bool taskValue) {
    tasks[taskIndex].complete = taskValue;
    notifyListeners();
  }

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (context) {
          return bottomSheetView;
        });
  }

  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  void updateUsername(String newUsername) {
    user.username = newUsername;
    notifyListeners();
  }
}
