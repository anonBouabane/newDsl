import 'package:flutter/material.dart';
import 'package:newdsl/view/screen/auth/login_screen.dart';
import 'package:newdsl/view/screen/bill/bill_list.dart';
import 'package:newdsl/view/screen/cart/cartscreen.dart';
import 'package:newdsl/view/screen/dashboard/dashboard.dart';
import 'package:newdsl/view/screen/payment/payment_screen.dart';
import 'package:newdsl/view/screen/search/search_bill.dart';
import 'package:newdsl/view/screen/search/searchcusto_page.dart';
import 'package:newdsl/view/screen/search/searchprod_page.dart';

class Routehelper {
  static const auth = '/login';
  static const dashboard = '/dashboardscreen';
  static const cart = 'cartscreen';
  static const searchproduct = 'searchproduct';
  static const searchCustomer = 'searchCustomer';
  static const searchBill = 'searchBill';
  static const billScreen = 'invoiceScreen';
  static const payMentScreen = 'paymentScreen';
  static Route<dynamic> ongenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case auth:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case dashboard:
        return MaterialPageRoute(builder: (context) => const DashboardScreen());
      case cart:
        return MaterialPageRoute(builder: (context) => const Cartscreen());
      case searchCustomer:
        return MaterialPageRoute(builder: (context) => const SearchcustoPage());
      case searchproduct:
        return MaterialPageRoute(builder: (context) => const SearchprodPage());
      case searchBill:
        return MaterialPageRoute(
            builder: (context) => const SearchBillScreen());
      case billScreen:
        return MaterialPageRoute(builder: (context) => const BilListScreen());
      case payMentScreen:
        return MaterialPageRoute(builder: (context) => const PayMentScreen());
      default:
        throw const FormatException('route not found');
    }
  }
}
