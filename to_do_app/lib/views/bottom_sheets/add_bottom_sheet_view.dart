import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_model.dart';
import 'package:to_do_app/view_models/app_view_model.dart';

class TaskBottomSheetView extends StatelessWidget {
  const TaskBottomSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return Padding(
        padding:
        EdgeInsets.only(bottom: MediaQuery
            .of(context)
            .viewInsets
            .bottom),
        child: Container(
          height: 80,
          child: Center(
            child: SizedBox(
              height: 40,
              width: 250,
              child: TextField(
                  onSubmitted: (value) {
                    if (entryController.text.isNotEmpty) {
                      Task newTask = Task(entryController.text, false);
                      viewModel.addTask(newTask);
                      entryController.clear();
                    }
                    Navigator.of(context).pop();
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      filled: true,
                      fillColor: viewModel.ctrLvl2,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none))),
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: viewModel.ctrLvl4,
                  autofocus: true,
                  autocorrect: false,
                  controller: entryController,
                  style: TextStyle(
                      color: viewModel.ctrLvl4, fontWeight: FontWeight.w500)),
            ),
          ),
        ),
      );
    });
  }
}
