import 'package:dio/dio.dart';

import 'dio_service.dart';
import '../config/api_constants.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${ApiConstants.secretKey}'
        }
      )
    );
  }
}