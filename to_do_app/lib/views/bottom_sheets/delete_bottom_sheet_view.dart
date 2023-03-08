import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/view_models/app_view_model.dart';

class DeleteBottomSheetView extends StatelessWidget {
  const DeleteBottomSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return Container(
        height: 125,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  viewModel.deleteAllTask();
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: viewModel.ctrLvl1,
                    backgroundColor: viewModel.ctrLvl4,
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                child: Text('Delete all')),
            SizedBox(width: 15),
            ElevatedButton(
                onPressed: () {
                  viewModel.deleteCompletedTask();
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: viewModel.ctrLvl1,
                    backgroundColor: viewModel.ctrLvl4,
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                child: Text('Delete completed'))
          ],
        ),
      );
    });
  }
}
