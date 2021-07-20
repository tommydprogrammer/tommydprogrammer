import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reminderz/core/style.dart';

class InputBox extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final String hintText;
  final String labelText;
  final IconData icon;
  final IconData leadingIcon;
  final int maxLength;
  final List<TextInputFormatter> inputFormat;
  final TextInputType inputType;
  final bool isPassword;
  final double raduis;
  final BorderSide borderSide;
  final double iconSize;
  final bool isWritable;
  final VoidCallback onIconClick;
  final Color leadingColor;
  final Color fillColor;
  final int maxLines;
  final bool enablePrefix;
  InputBox(
      {this.controller,
      this.validator,
      this.hintText,
      this.labelText,
      this.icon,
      this.leadingIcon,
      this.leadingColor = kPrimaryTextColor,
      this.fillColor = kWhiteColor,
      this.maxLength,
      this.maxLines,
      this.inputFormat,
      this.inputType,
      this.isPassword = false,
      this.raduis = 4.0,
      this.borderSide = BorderSide.none,
      this.iconSize = 24.0,
      this.isWritable = true,
      this.enablePrefix = true,
      this.onIconClick});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableInteractiveSelection: true,
      enabled: isWritable,
      validator: validator,
      inputFormatters: inputFormat,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: inputType,
      maxLength: maxLength,
      obscureText: isPassword,
      style: TextStyle(
        color: kBlackColor,
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: kSecondaryTextColor,
        ),
        hintText: hintText,
        // labelText: labelText,
        labelStyle: TextStyle(
          color: kSecondaryColor,
        ),
        counterText: '',
        fillColor: fillColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            this.raduis,
          ),
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            this.raduis,
          ),
          borderSide: this.borderSide,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            this.raduis,
          ),
          borderSide: this.borderSide,
        ),
        contentPadding: EdgeInsets.only(
          left: 15.0,
          bottom: 10.0,
          top: 10.0,
          //right: 25.0,
        ),

        // prefixIcon: enablePrefix
        //     ? Icon(
        //         leadingIcon,
        //         color: leadingColor,
        //         size: this.iconSize,
        //       )
        //     : Container(),

        suffixIcon: Padding(
          padding: EdgeInsets.only(
            right: 25.0,
          ),
          child: GestureDetector(
            onTap: onIconClick,
            child: Icon(
              icon,
              color: kPrimaryTextColor,
              size: this.iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
