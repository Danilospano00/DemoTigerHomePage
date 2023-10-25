import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tandu_demo_project/view/widgets/sections/coupon_card_text_section.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32.w,
      ),
      child: Container(
        height: 167.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/coupon_card_bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 19.5.w,
                right: 25.w,
                top: 23.h,
                bottom: 28.h,
              ),
              child: Image.asset(
                "assets/images/pig.png",
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CouponCardTextSection(
                    imagePath: "assets/icons/wallet.png",
                    title: "Hai ottenuto coupon per",
                    value: "0€",
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const CouponCardTextSection(
                    imagePath: "assets/icons/bill.png",
                    title: "Scontrini giocati",
                    value: "0",
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
