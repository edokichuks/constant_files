import 'package:flutter/material.dart';

import '../core/constants/app_constant_imports.dart';

class AppBoxCard extends StatelessWidget {
  final Widget boxChild;
  final Color boxColor;
  final VoidCallback? onPressed;
  const AppBoxCard(
      {Key? key,
      required this.boxChild,
      required this.boxColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: onPressed,
      child: Container(
        width: size.width * 0.4,
        height: AppDimension.large * 3.8,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(
            horizontal: AppDimension.medium, vertical: AppDimension.small),
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimension.medium, vertical: AppDimension.tiny),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(AppDimension.small * 1.25),
          boxShadow: const [
            BoxShadow(
              spreadRadius: AppDimension.zero,
              blurRadius: AppDimension.tiny,
              offset: Offset(AppDimension.tiny * 0.25, AppDimension.tiny),
              color: AppColor.shadowDrop,
            ),
          ],
        ),
        child: boxChild,
      ),
    );
  }
}

class HomeAppBoxCard extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onTap;
  const HomeAppBoxCard(
      {Key? key,
      required this.onTap,
      required this.imagePath,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBoxCard(
      onPressed: onTap,
      boxChild: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imagePath),
          const Flexible(
            child: SizedBox(
              height: AppDimension.medium,
            ),
          ),
          Text(
            text,
            style: AppTextStyle.body3.copyWith(
              color: AppColor.primary,
              fontSize: AppDimension.medium * 0.85,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
          ),
        ],
      ),
      boxColor: AppColor.white,
    );
  }
}
