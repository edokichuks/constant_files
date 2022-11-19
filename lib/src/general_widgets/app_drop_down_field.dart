import 'package:flutter/material.dart';

import '../core/constants/app_constant_imports.dart';

class AppDrowDownField extends StatelessWidget {
  const AppDrowDownField({
    Key? key,
    required this.itemList,
    required this.onItemPressed,
    required this.itemValue,
  }) : super(key: key);
  final List<String> itemList;
  final dynamic onItemPressed;
  final String itemValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimension.large * 1.6,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimension.medium,
      ),
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: AppDimension.small),
      color: AppColor.primary.withOpacity(0.1),
      child: DropdownButton(
        value: itemValue,
        icon: const Icon(Icons.arrow_drop_down_outlined),
        iconSize: AppDimension.large * 1.3,
        iconEnabledColor: AppColor.lightBlack,
        underline: const Text(''),
        isDense: true,
        isExpanded: true,
        items: itemList
            .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    ))
            .toList(),
        style: AppTextStyle.body1.copyWith(color: AppColor.black),
        onChanged: onItemPressed,
      ),
    );
  }
}
