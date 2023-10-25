import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tandu_demo_project/view/widgets/bottom_sheet.dart';

class RewardSection extends StatelessWidget {
  const RewardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 32.sp,
      ),
      height: 200.sp,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color(0xFFF4F4F4),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 17.w,
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 24.h,
                ),
                child: Column(
                  children: [
                    Text(
                      "Chi dorme non piglia premi!",
                      style: TextStyle(
                        fontSize: 24.sp,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        const CustomBottomSheet().show(context);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 48),
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.w,
                          vertical: 11.h,
                        ),
                      ),
                      child: Text(
                        "Scopri i premi",
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 11.w,
            ),
            Image.asset(
              "assets/images/sleeping_woman.png",
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
