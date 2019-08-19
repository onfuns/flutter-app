import 'package:dio/dio.dart';

class Http {
  static request(params) async {
    String url = params["url"];
    var data = params["data"];
    Options options = params['options'];
    Dio dio = new Dio();
    Response response = await dio.request(url, data: data, options: options);
    return response.data;
  }
}
