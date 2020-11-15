import 'package:employee_info_app/api_service/api_service.dart';
import 'package:employee_info_app/model/refresh_token_request_model.dart';
import 'package:employee_info_app/screen/employee_list_screen.dart';
import 'package:employee_info_app/utils/shared_pref.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  ApiService _apiService = Get.find();
  @override
  void onInit() {
    authenticationToken();
    super.onInit();
  }

  void authenticationToken() async{
    String refreshToken = await SharedPref.getData(key: "refresh_token")?? "";
    if(refreshToken.isNotEmpty){
      reNewToken();
    }
    else{
      getToken();
    }
  }

  void getToken() async{
    _apiService.retrieveToken().then((result){
      if(result !=null){
        SharedPref.setData(key: "token",value: result.access_token);
        SharedPref.setData(key: "refresh_token",value: result.refresh_token);
        Get.off(EmployeeListScreen());
      }
    });
  }

  void reNewToken() async{
     String refreshToken = await SharedPref.getData(key: "refresh_token");
    _apiService.refreshToken(refreshToken).then((result)async{
      if(result !=null){
        SharedPref.setData(key: "token",value: result.access_token);
        SharedPref.setData(key: "refresh_token",value: "");
        await Future.delayed(Duration(seconds: 3));
        Get.off(EmployeeListScreen());
      }
    }).catchError((onError){
      print(onError.toString());
    });
  }
}