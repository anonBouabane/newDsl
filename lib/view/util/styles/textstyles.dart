import 'dart:io';
import 'package:flutter/material.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:sizer/sizer.dart';

final txtRegularBold = TextStyle(
    fontSize: Platform.isAndroid ? 16.sp : 17.sp, fontWeight: FontWeight.bold);

final txtRegular = TextStyle(
    fontSize: Platform.isAndroid ? 16.sp : 17.sp,
    fontWeight: FontWeight.normal);

final txtRegularWhite = TextStyle(
    fontSize: Platform.isAndroid ? 16.sp : 17.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white);

//========>>>>>small=======
final txtsmallgrey = TextStyle(
    color: Colors.grey,
    fontSize: Platform.isAndroid ? 14.sp : 15.sp,
    fontWeight: FontWeight.bold);

final txtSmallBold = TextStyle(
    fontSize: Platform.isAndroid ? 14.sp : 15.sp, fontWeight: FontWeight.bold);

final txtSmall = TextStyle(
    fontSize: Platform.isAndroid ? 14.sp : 15.sp,
    fontWeight: FontWeight.normal);

final txtSmallWhite = TextStyle(
    color: Colors.white,
    fontSize: Platform.isAndroid ? 14.sp : 15.sp,
    fontWeight: FontWeight.normal);

//======>>>>>>Title========

final txtTitleLogin = TextStyle(color:Colrs.colorWhite,
    fontSize: Platform.isAndroid ? 25.sp : 22.sp, fontWeight: FontWeight.bold);
final txtTitleBold = TextStyle(
    fontSize: Platform.isAndroid ? 20.sp : 17.sp, fontWeight: FontWeight.bold);
final txtTitlewhite = TextStyle(
    fontSize: Platform.isAndroid ? 20.sp : 17.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white);

final txtTitlewnormal = TextStyle(
    fontSize: Platform.isAndroid ? 20.sp : 17.sp,
    fontWeight: FontWeight.normal);
