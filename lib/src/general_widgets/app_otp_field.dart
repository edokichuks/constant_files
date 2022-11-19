import 'package:flutter/material.dart';
import 'package:hng_task4/src/general_widgets/widgets.dart';

import '../core/constants/app_constant_imports.dart';


class AppOtpView extends StatefulWidget {
  final TextEditingController controller;
  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;
  final TextEditingController controller4;
  final TextEditingController controller5;

  const AppOtpView(
      {Key? key,
      required this.controller,
      required this.controller1,
      required this.controller2,
      required this.controller3,
      required this.controller4,
      required this.controller5})
      : super(key: key);

  @override
  State<AppOtpView> createState() => _AppOtpViewState();
}

class _AppOtpViewState extends State<AppOtpView> {
  ///Remove the key if error occurs
  ///key removal
  final _formKey = GlobalKey<FormState>();

  FocusNode? pin1FN;
  FocusNode? pin2FN;
  FocusNode? pin3FN;
  FocusNode? pin4FN;
  FocusNode? pin5FN;
  FocusNode? pin6FN;

  @override
  void initState() {
    pin1FN = FocusNode();
    pin2FN = FocusNode();
    pin3FN = FocusNode();
    pin4FN = FocusNode();
    pin5FN = FocusNode();
    pin6FN = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    pin1FN?.dispose();
    pin2FN?.dispose();
    pin3FN?.dispose();
    pin4FN?.dispose();
    pin5FN?.dispose();
    pin6FN?.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Spacing.smallHeight(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: AppDimension.large * 1.41,
                width: AppDimension.large * 1.41,
                child: TextFormField(
                  controller: widget.controller,
                  focusNode: pin1FN,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: pinInputDecoration(),
                  onChanged: (value) {
                    nextField(value, pin2FN);
                  },
                ),
              ),
              SizedBox(
                height: AppDimension.large * 1.41,
                width: AppDimension.large * 1.41,
                child: TextFormField(
                  controller: widget.controller1,
                  focusNode: pin2FN,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: pinInputDecoration(),
                  onChanged: (value) {
                    nextField(value, pin3FN);
                  },
                ),
              ),
              SizedBox(
                height: AppDimension.large * 1.41,
                width: AppDimension.large * 1.41,
                child: TextFormField(
                  focusNode: pin3FN,
                  controller: widget.controller2,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: pinInputDecoration(),
                  onChanged: (value) {
                    nextField(value, pin4FN);
                  },
                ),
              ),
              SizedBox(
                height: AppDimension.large * 1.41,
                width: AppDimension.large * 1.41,
                child: TextFormField(
                  focusNode: pin4FN,
                  controller: widget.controller3,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: pinInputDecoration(),
                  onChanged: (value) {
                    nextField(value, pin5FN);
                  },
                ),
              ),
              SizedBox(
                height: AppDimension.large * 1.41,
                width: AppDimension.large * 1.41,
                child: TextFormField(
                  focusNode: pin5FN,
                  controller: widget.controller4,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: pinInputDecoration(),
                  onChanged: (value) {
                    nextField(value, pin6FN);
                  },
                ),
              ),
              SizedBox(
                height: AppDimension.large * 1.41,
                width: AppDimension.large * 1.41,
                child: TextFormField(
                  controller: widget.controller5,
                  focusNode: pin6FN,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: pinInputDecoration(),
                  onChanged: (value) {
                    pin6FN!.unfocus();
                    ;
                  },
                ),
              ),
            ],
          ),
          const Spacing.smallHeight(),
        ],
      ),
    );
  }

  InputDecoration pinInputDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimension.small),
        borderSide: const BorderSide(
          color: AppColor.borderPin,
          width: AppDimension.tiny * 0.6,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimension.small),
        borderSide: const BorderSide(
          color: AppColor.borderPin,
          width: AppDimension.tiny * 0.6,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimension.small),
        borderSide: const BorderSide(
          color: AppColor.borderPin,
          width: AppDimension.tiny * 0.6,
        ),
      ),
    );
  }
}
