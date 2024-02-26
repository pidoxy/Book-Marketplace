import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_app/models/book_model.dart';
import 'package:library_app/services/load_books.dart';
import 'package:library_app/themes/colors.dart';
import 'package:library_app/utils/constants.dart';
import 'package:library_app/widgets/spacing.dart';
import 'package:library_app/widgets/texts.dart';

class LibraryNav extends StatefulWidget {
  const LibraryNav({super.key});

  @override
  State<LibraryNav> createState() => _LibraryNavState();
}

class _LibraryNavState extends State<LibraryNav> {
  List<BookModel> booksList = [];
  @override
  void initState() {
    AppServices.loadBooks().then((value) => setState(() {
          booksList = value;
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: AppConst.appPadding(),
        child: Column(
          children: [
            Row(
              children: [
                TextOf(
                  "Library",
                  24.sp,
                  6,
                  color: AppColors.primaryColor,
                )
              ],
            ),
            YMargin(30.sp),
            Row(
              children: [
                TextOf(
                  "My list",
                  20.sp,
                  6,
                  color: AppColors.primaryColor,
                )
              ],
            ),
            YMargin(10.sp),
            booksList.isEmpty
                ? Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircularProgressIndicator(),
                        YMargin(10.sp),
                        const Text("Please wait...")
                      ],
                    ),
                  )
                : Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      padding: EdgeInsets.only(bottom: 0.2.sh),
                      childAspectRatio: 0.475,
                      children: List.generate(booksList.length, (index) {
                        BookModel bookModel = booksList[index];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(bookModel.imagePath, height: 150.sp),
                            YMargin(10.sp),
                            Row(
                              children: [
                                Expanded(
                                    child: TextOf(
                                  bookModel.name,
                                  10,
                                  7,
                                  align: TextAlign.left,
                                )),
                              ],
                            ),
                            YMargin(5.sp),
                            Row(
                              children: [
                                TextOf(
                                  bookModel.pageCount,
                                  10,
                                  3,
                                  color: AppColors.black.withOpacity(0.4),
                                  align: TextAlign.left,
                                ),
                              ],
                            )
                          ],
                        );
                      }),
                    ),
                  ),
          ],
        ),
      )),
    );
  }
}

//