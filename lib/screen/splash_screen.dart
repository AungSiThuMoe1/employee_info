import 'package:employee_info_app/controller/splash_controller.dart';
import 'package:employee_info_app/screen/employee_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
 final SplashController _splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Employee Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blueAccent),),
            SizedBox(height: 10,),
            CircularProgressIndicator()
          ],
        ),
      )
    );
  }
}
