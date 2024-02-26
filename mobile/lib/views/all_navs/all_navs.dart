import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/themes/colors.dart';
import 'package:library_app/utils/images.dart';
import 'package:library_app/views/home_nav/home_nav.dart';
import 'package:library_app/views/library_nav/library_nav.dart';
import 'package:library_app/views/scan_nav/scan_nav.dart';
import 'package:library_app/widgets/spacing.dart';
import 'package:library_app/widgets/texts.dart';

class AppNavs extends StatefulWidget {
  const AppNavs({super.key});

  @override
  State<AppNavs> createState() => _AppNavsState();
}

class _AppNavsState extends State<AppNavs> {
  int currentIndex = 0;
  List<Widget> navPages = [
    const HomeNav(),
    const ScanNav(),
    const LibraryNav()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        SizedBox.expand(
          child: navPages.elementAt(currentIndex),
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              border: Border(top: BorderSide(color: AppColors.grey))),
          padding: EdgeInsets.only(bottom: 5.sp).add(EdgeInsets.all(10.sp)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                3,
                (index) => eachNav(
                    currentIndex: currentIndex,
                    index: index,
                    navName: switch (index) {
                      0 => "Home",
                      1 => "Scan",
                      2 => "Library",
                      _ => "",
                    },
                    iconPath: switch (index) {
                      0 => ImageOf.homeNav,
                      1 => ImageOf.scannerNav,
                      2 => ImageOf.libraryNav,
                      _ => "",
                    },
                    onTapNav: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    })),
          ),
        )
      ]),
    );
  }
}

eachNav(
    {required int currentIndex,
    required int index,
    required String navName,
    required String iconPath,
    required Function(int) onTapNav}) {
  return InkWell(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    onTap: () {
      onTapNav(index);
    },
    child: CircleAvatar(
      radius: 35.sp,
      backgroundColor:
          currentIndex == index ? AppColors.primaryColor : Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageIcon(
            AssetImage(iconPath),
            size: 27.sp,
            color: currentIndex == index ? AppColors.white : AppColors.black,
          ),
          YMargin(7.sp),
          TextOf(
            navName,
            12.sp,
            5,
            color: currentIndex == index ? AppColors.white : AppColors.black,
          )
        ],
      ),
    ),
  );
}
