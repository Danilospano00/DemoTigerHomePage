import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tandu_demo_project/view/widgets/coupon_card.dart';
import 'package:tandu_demo_project/view/widgets/sections/halloween_section.dart';
import 'package:tandu_demo_project/view/widgets/sections/level_section.dart';
import 'package:tandu_demo_project/view/widgets/sections/reward_section.dart';
import 'package:tandu_demo_project/view/widgets/sections/user_tile_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            top: MediaQuery.paddingOf(context).top,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            const UserTileSection(),
            SizedBox(
              height: 24.h,
            ),
            const CouponCard(),
            SizedBox(
              height: 24.h,
            ),
            const LevelSection(),
            SizedBox(
              height: 24.h,
            ),
            const RewardSection(),
            SizedBox(
              height: 24.h,
            ),
            const HalloweenSection(),
          ],
        ),
      ),
    );
  }
}
