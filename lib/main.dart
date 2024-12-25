import 'package:flutter/material.dart';
import 'package:newdsl/data/controller/auth_controller.dart';
import 'package:newdsl/data/controller/customer_controller.dart';
import 'package:newdsl/routes/routehelper.dart';
import 'package:newdsl/view/screen/splash/splashscreen.dart';
import 'package:newdsl/view/util/theme/theme.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthController()),
      ChangeNotifierProvider(
          create: (_) => CustomerController()..fetchAllcustomers())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (contex, orientation, deviceType) {
      return MaterialApp(
        navigatorKey: NavigationService.navigationKey,
        onGenerateRoute: Routehelper.ongenerateRoute,
        debugShowCheckedModeBanner: false,
        title: 'dsl',
        theme: ThemeController.themelight,
        home: const Splashscreen(),
      );
    });
  }
}
