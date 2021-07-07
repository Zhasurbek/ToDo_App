import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_colors.dart';

const xListOfTaskContDecor = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);

final xTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    borderSide: const BorderSide(
      color: AppColor.xBackgroundColor1,
      width: 2.0,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    borderSide: const BorderSide(
      color: AppColor.xBackgroundColor1,
      width: 2.0,
    ),
  ),
);
