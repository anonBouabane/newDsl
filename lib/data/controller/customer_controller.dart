import 'package:flutter/material.dart';
import 'package:newdsl/data/model/customer_model.dart';
import 'package:newdsl/data/repository/customer_repo.dart';

class CustomerController extends ChangeNotifier {
  final customerRepo = CustomerRepo();
  List<CustomerModel> _customer = [];
  List<CustomerModel> get customer => _customer;

  bool _isloading = false;
  bool get isloading => _isloading;
  Future<void> fetchAllcustomers() async {
    _isloading = true;
    notifyListeners();
    try {
      final result = await customerRepo.fetchAllcustomer();
      _customer = result ?? [];
      _isloading = false;
      notifyListeners();
    } catch (e) {
      _isloading = false;
      notifyListeners();
      rethrow;
    }
  }
}
