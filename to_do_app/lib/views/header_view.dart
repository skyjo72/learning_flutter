import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/view_models/app_view_model.dart';
import 'package:to_do_app/views/bottom_sheets/delete_bottom_sheet_view.dart';

import 'bottom_sheets/setting_bottom_sheet_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, value) {
      return Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text('Welcome back',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: viewModel.ctrLvl4)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(viewModel.user.username,
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w400,
                                  color: viewModel.ctrLvl4)),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  viewModel.bottomSheetBuilder(
                      const DeleteBottomSheetView(), context);
                },
                child: Icon(size: 40, Icons.delete, color: viewModel.ctrLvl3),
              )),
          Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  viewModel.bottomSheetBuilder(
                      const SettingsBottomSheetView(), context);
                },
                child: Icon(size: 40, Icons.settings, color: viewModel.ctrLvl3),
              ))
        ],
      );
    });
  }
}
