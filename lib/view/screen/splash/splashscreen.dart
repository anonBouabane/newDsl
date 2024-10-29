import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:newdsl/routes/routehelper.dart';
import 'package:newdsl/view/util/images/images.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      navService.pushNamedAndRemoveUntil(Routehelper.auth);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  Colrs.appBarColors,
      body: Center(
        child: Lottie.asset(Images.splashLoading),
      ),
    );
  }
}
