import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CouponCardTextSection extends StatelessWidget {
  final String imagePath;
  final String title;
  final String value;

  const CouponCardTextSection({
    required this.imagePath,
    required this.title,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 16.w,
        ),
        SizedBox(
          width: 16.w,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 13.sp,
                  height: 1,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 28.sp,
                  height: 0.9,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 27.w,
        ),
      ],
    );
  }
}
