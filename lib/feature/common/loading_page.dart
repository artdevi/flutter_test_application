import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: AppColors.primaryOrange),
      ),
    );
  }
}
