import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class RegularHorizontalPadding extends StatelessWidget {
  const RegularHorizontalPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: Values.horizontalPadding)
    );
  }
}
