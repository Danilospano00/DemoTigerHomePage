import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tandu_demo_project/controller/counter_controller.dart';

class UserSection extends StatelessWidget {
  UserSection({super.key});

  final CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.increment();
      },
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
        ],
      ),
    );
  }
}
