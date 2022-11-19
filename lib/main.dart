import 'package:flutter/material.dart';
import 'package:hng_task4/src/core/constants/app_colors.dart';
import 'package:hng_task4/src/core/constants/app_constant_imports.dart';
import 'package:hng_task4/src/general_widgets/widgets.dart';

import 'src/general_widgets/app_elevated_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('chuks'),
                AppTextField(
                  hintText: 'Name',
                  labelText: 'label',
                ),
                Spacing.meduimHeight(),
                AppTextField(
                  hintText: 'Name',
                  labelText: 'label',
                ),
                Spacing.meduimHeight(),
                AppTextField(
                  hintText: 'Name',
                  labelText: 'label',
                ),
                Spacing.smallHeight(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimension.large,
                  ),
                  child: AppElevatedButton(
                    label: 'test',
                    isLoading: false,
                    borderColor: AppColor.kSecondaryColor,
                    buttonColor: AppColor.kSecondaryColor.shade500,
                    textColor: AppColor.kGrayNeutralColor.shade100,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
