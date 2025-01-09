import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class RegularHorizontalPadding extends StatelessWidget {
  Widget child;

  RegularHorizontalPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: Values.horizontalPadding),
        child: child,
    );
  }
}
