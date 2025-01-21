// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';

abstract class BaCustomInterceptor {
  Interceptor getInterceptor(Dio dio);
}
