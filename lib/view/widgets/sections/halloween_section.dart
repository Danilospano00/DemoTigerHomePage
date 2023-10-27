import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HalloweenSection extends StatelessWidget {
  const HalloweenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 32.sp,
      ),
      height: 112.sp,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color(0xFFF4F4F4),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          23.sp,
          24.sp,
          31.sp,
          24.sp,
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/images/bat.png",
              width: 57.sp,
              height: 62.sp,
            ),
            SizedBox(
              width: 8.sp,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "La senti anche tu questa forza?",
                    style: TextStyle(
                      fontSize: 19.sp,
                      height: 0.95,
                    ),
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Text(
                    "Sblocca nuovi superpoteri!",
                    style: TextStyle(
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
