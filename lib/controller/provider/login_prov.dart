import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:machinetesttwo/model/login_model.dart';

class LoginProv extends ChangeNotifier {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> globalkey = GlobalKey<FormState>();

  Future apiCallLogin(String email, String password) async {
    http.Response response;
    response = await http.post(
        Uri.parse('http://restapi.adequateshop.com/api/authaccount/login'),
        headers: <String, String>{"email": email, "password": password},
        body:
            jsonEncode(<String, String>{'email': email, 'password': password}));
    if (response.statusCode == 200) {
      print(response.body);
      return Login.fromJson(jsonDecode(response.body));
    }
    notifyListeners();
  }
  void signin(){
    // if)
  }

}
