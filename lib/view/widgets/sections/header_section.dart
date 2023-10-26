import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tandu_demo_project/view/widgets/counter_button.dart';
import 'package:tandu_demo_project/view/widgets/sections/user_section.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32.sp,
      ),
      child: Row(
        children: [
          UserSection(),
          const Spacer(),
          const CounterButton(),
        ],
      ),
    );
  }
}
