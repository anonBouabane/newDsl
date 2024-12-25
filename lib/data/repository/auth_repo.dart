import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:newdsl/data/model/authmodel.dart';
import 'package:newdsl/util/app_constant.dart';

class AuthRepo {
  final dio = Dio();
  Future<Authmode> login(
      {required String username, required String password}) async {
    try {
      final data =
          jsonEncode({"username": username, "user_password": password});
      final response = await dio.post(AppConstant.login, data: data);
      if (response.statusCode == 200) {
        return Authmode.fromJson(response.data);
      } else {
        return throw Exception(
            "bad request status ===>>${response.statusCode}");
      }
    } catch (e) {
      rethrow;
    }
  }
}
