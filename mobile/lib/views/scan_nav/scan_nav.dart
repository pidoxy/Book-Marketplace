import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/themes/colors.dart';
import 'package:library_app/utils/constants.dart';
import 'package:library_app/utils/images.dart';
import 'package:library_app/widgets/file_box_builder.dart';
import 'package:library_app/widgets/icons.dart';
import 'package:library_app/widgets/spacing.dart';
import 'package:library_app/widgets/texts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScanNav extends StatelessWidget {
  const ScanNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: AppConst.appPadding(),
          child: Column(
            children: [
              Row(
                children: [
                  TextOf(
                    "Visual Inspection",
                    24.sp,
                    6,
                    color: AppColors.primaryColor,
                  )
                ],
              ),
              YMargin(40.sp),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25.sp),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.grey,
                    ),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      YMargin(30.sp),
                      SvgPicture.asset(ImageOf.scannerIcon),
                      YMargin(30.sp),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.sp, horizontal: 15.sp),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.sp)),
                              backgroundColor: AppColors.primaryColor),
                          child: TextOf(
                            "SCAN FRONT COVER",
                            16.sp,
                            6,
                            color: AppColors.white,
                          ))
                    ],
                  ),
                ),
              ),
              YMargin(30.sp),
              Row(
                children: [TextOf("Uploaded Files", 16.sp, 6)],
              ),
              YMargin(5.sp),
              FileBoxBuilder(
                  iconPath: ImageOf.zipIcon,
                  subtitle: "102.3 mb",
                  title: "universal zip file icon",
                  trailingIcon: Icons.delete_outline_rounded),
              YMargin(15.sp),
              FileBoxBuilder(
                iconPath: ImageOf.imageIcon,
                subtitle: "upload failed",
                subtitleColor: AppColors.red,
                title: "Universal zip image icon",
                trailingIcon: Icons.delete_outline_rounded,
                trailingWidget: IconOf(
                  Icons.sync,
                  color: AppColors.black.withOpacity(0.4),
                ),
              ),
              YMargin(15.sp),
              FileBoxBuilder(
                iconPath: ImageOf.pdfIcon,
                subtitle: "34.2 mb 39% • 2 mins left",
                title: "Universal pdf file icon",
                trailingIcon: Icons.close,
              ),
              YMargin(0.2.sh),
            ],
          ),
        ),
      ),
    );
  }
}

