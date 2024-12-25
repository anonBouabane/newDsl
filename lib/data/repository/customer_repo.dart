import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:newdsl/data/model/customer_model.dart';
import 'package:newdsl/util/app_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerRepo {
  final dio = Dio();
  Future<List<CustomerModel>?> fetchAllcustomer() async {
    SharedPreferences prefers = await SharedPreferences.getInstance();
    String? token = prefers.getString('accessToken');
    try {
      final resp = await dio.post(
        AppConstant.getcustomer,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (resp.data['status'] == true) {
        final customerList =
            customerModelFromJson(jsonEncode(resp.data['data']));
        return customerList;
      } else {
        Exception("fail to call api customer list");
      }
    } catch (e) {
      throw e.toString();
    }
    return null;
  }
}
