import 'package:flutter/material.dart';
import 'package:portfolio_marcel_gym/core/constants/app_colors.dart';
import 'package:portfolio_marcel_gym/core/constants/styles.dart';
import 'package:portfolio_marcel_gym/core/constants/values.dart';

class MainTextFormField extends StatefulWidget {
  IconData? prefixIcon;
  String? labelText;
  String? Function(String?)? validator;
  final bool passwordTextFormFields;

  MainTextFormField({
    super.key,
    this.prefixIcon,
    this.labelText,
    this.validator,
    this.passwordTextFormFields = false
  });

  @override
  State<MainTextFormField> createState() => _MainTextFormFieldState();
}

class _MainTextFormFieldState extends State<MainTextFormField> {
  FocusNode node = FocusNode();
  bool obscureText = true;

  @override
  void initState() {
    super.initState();
    node.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    node.removeListener(() {});
    node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator:(value){
        if(widget.validator != null){
          return widget.validator!(value);
        }
        return null;
      },
      focusNode: node,
      style: AppStyles.getTextFromFieldTextStyle(node.hasFocus),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.secondaryContainer,
        labelText: widget.labelText,
        labelStyle: AppStyles.getTextFromFieldTextStyle(node.hasFocus),
        prefixIcon: widget.prefixIcon == null
            ? null
            : Icon(
              widget.prefixIcon,
              color: node.hasFocus ? AppColors.onSecondaryContainer : AppColors.secondaryText,
        ),
        suffixIcon: widget.passwordTextFormFields
            ? IconButton(
          icon: Icon(
            obscureText ? Icons.visibility : Icons.visibility_off,
            color: node.hasFocus ? AppColors.onSecondaryContainer : AppColors.secondaryText,
          ),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        )
            : null,
        contentPadding:
          widget.prefixIcon != null
            ? widget.labelText == null
              ? EdgeInsets.only(top: Values.textFormFieldTopContentPadding)
              : null
            : EdgeInsets.only(left: Values.textFormFieldLeftContentPadding),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColors.secondaryText,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: AppColors.onSecondaryContainer,
          ),
        ),
      ),
    );
  }
}
