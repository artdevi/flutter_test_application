import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';

import 'feature/home/ui/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Mark Pro',
        backgroundColor: AppColors.mainBackground,
        scaffoldBackgroundColor: AppColors.mainBackground,
      ),
      home: HomePage(),
    );
  }
}
