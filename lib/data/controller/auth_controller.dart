import 'package:flutter/material.dart';
import 'package:newdsl/data/model/authmodel.dart';
import 'package:newdsl/data/repository/auth_repo.dart';
import 'package:newdsl/routes/routehelper.dart';
import 'package:newdsl/share/sharedata.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends ChangeNotifier {
  dynamic _userdata;
  dynamic get userdata => _userdata;

  bool _isloading = false;
  bool get isloading => _isloading;

  final authRepo = AuthRepo();
  Future<void> login(
      {required String username, required String password}) async {
    _isloading = true;
    try {
      Authmode authmode =
          await authRepo.login(username: username, password: password);
      navService.goBack();

      if (authmode.resultCode == "OK") {
        _shareprefer("full_name", authmode.fullName.toString());
        _shareprefer("user_status", authmode.userStatus.toString());
        _shareprefer("role", authmode.roleName.toString());
        _shareprefer("accessToken", authmode.accessToken.toString());
        _shareprefer("depart_name", authmode.departName.toString());

        ShareData.fullName = authmode.fullName.toString();
        ShareData.role = authmode.roleName.toString();
        ShareData.token = authmode.accessToken.toString();
        ShareData.userDepart = authmode.departName.toString();
        ShareData.userStatus = authmode.userStatus.toString();

        _isloading = false;
        navService.pushNamedAndRemoveUntil(Routehelper.dashboard);
        notifyListeners();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _shareprefer(String key, String value) async {
    final prefer = await SharedPreferences.getInstance();
    prefer.setString(key, value);
  }

  Future<String> getprefer(String key) async {
    final prefer = await SharedPreferences.getInstance();
    String data = "";
    if (prefer.getString(key) != null) {
      data = prefer.getString(key).toString();
    }
    return data;
  }

  Future<void> clearprefer() async {
    SharedPreferences prefers = await SharedPreferences.getInstance();
    await prefers.clear();
    await navService.pushNamedAndRemoveUntil(Routehelper.auth);
    notifyListeners();
  }

  setdatafromprefer() async {
    ShareData.fullName = await getprefer('full_name');
    ShareData.role = await getprefer('role_name');
    ShareData.token = await getprefer('accessToken');
    ShareData.userDepart = await getprefer('depart_name');
    ShareData.userStatus = await getprefer('user_status');
  }
}
