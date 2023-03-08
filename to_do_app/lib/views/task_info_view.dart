import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/view_models/app_view_model.dart';

class TaskInfoView extends StatelessWidget {
  const TaskInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Container(
          margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: viewModel.ctrLvl2,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text('${viewModel.numTask}',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: viewModel.ctrLvl3,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: FittedBox(child: Text("Total Tasks"))),
                      )
                    ]),
                  )),
              const SizedBox(width: 20),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: viewModel.ctrLvl2,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text('${viewModel.taskCompleted}',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: viewModel.ctrLvl3,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: FittedBox(child: Text("Remaining"))),
                      )
                    ]),
                  )),
            ],
          ),
        );
      },
    );
  }
}
