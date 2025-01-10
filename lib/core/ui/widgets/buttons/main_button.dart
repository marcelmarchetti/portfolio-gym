import 'package:flutter/material.dart';
import 'package:portfolio_marcel_gym/core/constants/styles.dart';

import '../../../constants/values.dart';
import '../../../utils/log.dart';
import '../progress_indicators/main_circular_progress_indicator.dart';

class MainButton extends StatefulWidget {
  String? buttonText;
  Color? backgroundColor;
  Color? borderColor;
  Color? textColor;
  Future<void> Function()? onTap;


  MainButton({
    super.key,
    this.onTap,
    this.borderColor,
    this.buttonText,
    this.backgroundColor,
    this.textColor
  });

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  bool isButtonLoading = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if(!isButtonLoading){
          isButtonLoading = true;
          setState(() {});
          try{
            if(widget.onTap != null){
              await widget.onTap!();
            }
          } catch (e, s){
            Log.errorWithStackTrace(e, s);
          } finally {
            isButtonLoading = false;
            setState(() {});
          }
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2 * Values.horizontalPadding),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              color: widget.backgroundColor ?? Colors.white,
              borderRadius: BorderRadius.circular(Values.buttonRadius),
              border: Border.all(
                  color: widget.borderColor ?? Colors.black,
                  width: 2
              )
          ),
          child: isButtonLoading
              ? Center(
                child: SizedBox(
                    height: 24,
                    width: 24,
                    child: MainCircularProgressIndicator()
                ),
              )
              : Center(
            child: Text(
                widget.buttonText ?? Values.placeholder,
                style: AppStyles.getButtonTextStyle(widget.textColor ?? Colors.black),),
          ),
        ),
      ),
    );
  }
}
