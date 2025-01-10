import 'package:flutter/material.dart';

class CancelFocus extends StatelessWidget {
  Widget child;

  CancelFocus({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      FocusScope.of(context).requestFocus(FocusNode());
      },
      child: child,
    );
  }
}
