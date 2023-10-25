import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LevelSectionCard extends StatelessWidget {
  final String imagePath;
  final String description;

  final Color backgroundColor;

  const LevelSectionCard({
    required this.imagePath,
    required this.description,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: backgroundColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 19.w,
          vertical: 19.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 61.w,
              height: 68.h,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
