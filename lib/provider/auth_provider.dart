import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce/models/user_model.dart';
import 'package:flutter_ecommerce/service/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late USerModel _user;

  USerModel get user => _user;

  set user(USerModel user) {
    _user = user;

    notifyListeners();
  }

  Future<bool> register({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    try {
      USerModel user = await AuthService().register(
          fullname: name, username: username, email: email, password: password);

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({String? email, String? password}) async {
    try {
      USerModel user =
          await AuthService().login(email: email, password: password);
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
