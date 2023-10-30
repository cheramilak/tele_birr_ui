import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

InputDecoration FormInputDecoration(
    {IconData? prefixIcon,
    String? hint,
    Color? bgColor,
    Color? borderColor,
    EdgeInsets? padding}) {
  return InputDecoration(
      contentPadding:
          padding ?? EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      counter: Offstage(),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.greenAccent)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.greenAccent),
      ),
      fillColor: bgColor,
      hintText: hint,
      hintStyle: secondaryTextStyle(),
      filled: true,
      prefixText: '+251');
}
