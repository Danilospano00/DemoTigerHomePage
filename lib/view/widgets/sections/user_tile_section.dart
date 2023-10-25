import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tandu_demo_project/view/widgets/counter_button.dart';

class UserTileSection extends StatelessWidget {
  const UserTileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32.sp,
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/mouse.png",
            width: 50.sp,
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            "Matteo",
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          const Spacer(),
          CounterButton(),
        ],
      ),
    );
  }
}
