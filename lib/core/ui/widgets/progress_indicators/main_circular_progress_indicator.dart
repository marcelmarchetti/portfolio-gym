import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class MainCircularProgressIndicator extends StatefulWidget {
  const MainCircularProgressIndicator({super.key});

  @override
  State<MainCircularProgressIndicator> createState() => _MainCircularLoadingIndicatorState();
}

class _MainCircularLoadingIndicatorState extends State<MainCircularProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: AppColors.primary,
      backgroundColor: Colors.transparent,
      strokeWidth: 2,
    );
  }
}
