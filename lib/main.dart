import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tandu_demo_project/theme/theme.dart';
import 'package:tandu_demo_project/utils/dependency_manager/get_dependency_manager.dart';
import 'package:tandu_demo_project/view/pages/home_page.dart';
import 'package:tandu_demo_project/view/widgets/bottom_sheet.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetDependencyManager.initializeDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 945),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData,
        home: const HomePage(),
      ),
    );
  }
}
