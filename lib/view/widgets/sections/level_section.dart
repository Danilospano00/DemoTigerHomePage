import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tandu_demo_project/view/widgets/level_section_card.dart';

class LevelSection extends StatelessWidget {
  const LevelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 32.sp,
          ),
          child: Text(
            "Sali di livello e guadagna",
            style: TextStyle(
              fontSize: 23.sp,
            ),
          ),
        ),
        SizedBox(
          height: 16.sp,
        ),
        SizedBox(
          height: 168.sp,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 32.sp,
              ),
              const LevelSectionCard(
                imagePath: "assets/images/dog.png",
                description: "Completa il tuo bel profilo",
                backgroundColor: Color(0xFFFAF48E),
              ),
              SizedBox(
                width: 8.sp,
              ),
              const LevelSectionCard(
                imagePath: "assets/images/cat.png",
                description: "Tenta la fortuna con gli scontrini",
                backgroundColor: Color(0xFFD5F5FA),
              ),
              SizedBox(
                width: 8.sp,
              ),
              const LevelSectionCard(
                imagePath: "assets/images/pink_monster.png",
                description: "Scala le vette con i tuoi amici",
                backgroundColor: Color(0xFFFFE8FB),
              ),
              SizedBox(
                width: 32.sp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
