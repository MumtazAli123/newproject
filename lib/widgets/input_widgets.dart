import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIConfig {
  InputDecoration inputDecoration(String hintText, String labelText,
      IconData? prefixIcon, IconData? suffixIcon, void Function()? onTap) {
    return InputDecoration(
      isDense: true,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: CupertinoColors.inactiveGray,
            // color: Color.fromRGBO(242, 242, 242, 1),
          )),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 21),
      fillColor: const Color(0xffF4F5F7),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: CupertinoColors.activeBlue,
            // color: Color.fromRGBO(242, 242, 242, 1),
          )),
      hintText: hintText,
      labelText: labelText,
      prefixIcon: Icon(prefixIcon),
      suffixIcon: InkWell(onTap: onTap, child: Icon(suffixIcon)),
    );
  }
}
