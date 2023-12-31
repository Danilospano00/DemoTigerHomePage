import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tandu_demo_project/controller/counter_controller.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({super.key});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  @override
  void initState() {
    _controller.counterValue.value = _controller.getCounterValue();
    super.initState();
  }

  final CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _controller.increment();
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(0, 40.h),
      ),
      child: Obx(
        () {
          return Text(
            _controller.counterValue.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
            ),
          );
        },
      ),
    );
  }
}
