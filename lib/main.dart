import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:employee_info_app/screen/employee_list_screen.dart';
import 'package:employee_info_app/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api_service/api_service.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Dio dio = Dio();
    dio.transformer = FlutterTransformer();
    dio.interceptors.add(LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        logPrint: (log) => print(log)
    ));
    ApiService apiService = ApiService(dio);
    Get.put(apiService);
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:SplashScreen(),
    );
  }
}