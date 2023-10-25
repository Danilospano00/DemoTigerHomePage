import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tandu_demo_project/utils/mixins/showable.dart';

class CustomBottomSheet extends StatelessWidget with Showable {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 32.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 36.h,
            ),
            Text(
              "Whoops! Questo codice non sembra valido",
              style: TextStyle(
                fontSize: 28.sp,
                height: 0.95,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "Non riconosciamo questo codice inserito. Appartiene alle nostre campagne? Controlla di averlo scritto correttamente.",
              style: TextStyle(
                fontSize: 16.sp,
                height: 1.2,
                color: Color(0xFF7B7B7B),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Image.asset(
              "assets/images/blue_monster.png",
              width: 168.w,
              height: 148.h,
            ),
            SizedBox(
              height: 27.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 54),
              ),
              child: Text(
                "Inserisci di nuovo",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Scopri altre campagne",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 31.h,
            ),
          ],
        ),
      ),
    );
  }
}
