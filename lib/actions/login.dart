import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_app/utils/http.dart';
import 'package:flutter_app/model/login.dart';

class LoginApi {
  static login() async {
    Map params = {"a": '1111'};
    Map httpParams = {
      "url":
          "https://www.easy-mock.com/mock/5d5a34e3a60a5c2085b30471/onfuns/login",
      "data": json.encode(params),
      "options": new Options(method: "post")
    };
    var res = await Http.request(httpParams);
    LoginModel result = LoginModel.fromJson(res);
    print('------------');
    print(res);
    print('------------');
    return result;
  }
}
