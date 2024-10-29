import 'package:flutter/material.dart';
import 'package:newdsl/view/screen/customer/customerlist.dart';
import 'package:newdsl/view/screen/customer/registercustomer.dart';
import 'package:newdsl/view/screen/product/productscreen.dart';
import 'package:newdsl/view/screen/profile/profilescreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

List chiledren = [
  const Productscreen(),
  const CustomerList(),
  const Registercustomer(),
  const Profilescreen(),
];

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chiledren[currentIndex],
      bottomNavigationBar: bottomBar(),
    );
  }

  BottomNavigationBar bottomBar() {
    return BottomNavigationBar(
      selectedIconTheme: const IconThemeData(
        size: 30,
      ),
      type: BottomNavigationBarType.fixed,
      fixedColor: const Color.fromARGB(255, 49, 223, 236),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopify_rounded,
            ),
            label: 'product'),
        BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined), label: 'custolist'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1_outlined),
            label: 'registercusto'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_outlined), label: 'profile'),
      ],
      onTap: ontapIndex,
      currentIndex: currentIndex,
    );
  }

  int currentIndex = 0;
  ontapIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }
}
