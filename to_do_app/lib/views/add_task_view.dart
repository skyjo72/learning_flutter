import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/view_models/app_view_model.dart';

import 'bottom_sheets/add_bottom_sheet_view.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: viewModel.ctrLvl3,
                foregroundColor: viewModel.ctrLvl1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              viewModel.bottomSheetBuilder(
                const TaskBottomSheetView(), context);
            },
            child: const Icon(Icons.add, size: 30),
          ));
    });
  }
}
