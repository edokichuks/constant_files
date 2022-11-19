import 'package:flutter/material.dart';

import '../core/constants/app_constant_imports.dart';

class MostViewCard extends StatelessWidget {
  final String text;
  const MostViewCard({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimension.large * 4,
      width: AppDimension.large * 3,
      margin: const EdgeInsets.symmetric(
          horizontal: AppDimension.tiny, vertical: AppDimension.small),
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimension.small, vertical: AppDimension.zero),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: AppDimension.large * 2.16,
            width: AppDimension.large * 2.16,
            decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                blurRadius: AppDimension.tiny,
                spreadRadius: AppDimension.zero,
                offset: Offset(AppDimension.tiny * 0.5, AppDimension.tiny),
                color: AppColor.profileBackground,
              )
            ]),
            child: CircleAvatar(
              backgroundColor: AppColor.primary.withOpacity(0.4),
            ),
          ),
          Text(
            text,
            style: AppTextStyle.body1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
