import 'package:flutter/material.dart';

import '../core/constants/app_constant_imports.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 14,
      width: 14,
      decoration: BoxDecoration(
          color:
              isActive ? AppColor.primary : AppColor.primary.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColor.primary)),
    );
  }
}
