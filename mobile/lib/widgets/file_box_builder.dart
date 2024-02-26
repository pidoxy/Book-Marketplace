// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/themes/colors.dart';
import 'package:library_app/utils/images.dart';
import 'package:library_app/widgets/icons.dart';
import 'package:library_app/widgets/spacing.dart';
import 'package:library_app/widgets/texts.dart';

@immutable
class FileBoxBuilder extends StatelessWidget {
  FileBoxBuilder({
    required this.iconPath,
    required this.subtitle,
    required this.title,
    required this.trailingIcon,
    this.trailingWidget,
    this.subtitleColor,
    this.subtitleWidget,
    super.key,
  });

  final String title, subtitle, iconPath;
  final IconData trailingIcon;
  Color? subtitleColor;
  Widget? trailingWidget, subtitleWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 15.sp),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                iconPath,
                height: 20.sp,
              ),
              XMargin(15.sp),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextOf(title, 12.sp, 4),
                      TextOf(
                        subtitle,
                        12.sp,
                        4,
                        color:
                            subtitleColor ?? AppColors.black.withOpacity(0.3),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconOf(
                        trailingIcon,
                        color: AppColors.black.withOpacity(0.4),
                        size: 15.sp,
                      ),
                      trailingWidget ?? const SizedBox.shrink()
                    ],
                  )
                ],
              ))
            ],
          ),
          if (subtitleWidget != null) subtitleWidget!
        ],
      ),
    );
  }
}
