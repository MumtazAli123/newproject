import 'package:flutter/material.dart';

class UIConfig {
  InputDecoration inputDecoration(String hintText, String labelText,
      IconData? prefixIcon, IconData? suffixIcon, void Function()? onTap) {
    return InputDecoration(
      isDense: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        // borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 11),
      fillColor: const Color(0xffF4F5F7),
      hintText: hintText,
      labelText: labelText,
      prefixIcon: Icon(prefixIcon),
      suffixIcon: InkWell(onTap: onTap, child: Icon(suffixIcon)),
    );
  }
}
