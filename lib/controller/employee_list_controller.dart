import 'package:employee_info_app/api_service/api_service.dart';
import 'package:employee_info_app/model/results.dart';
import 'package:employee_info_app/utils/shared_pref.dart';
import 'package:get/get.dart';

class EmployeeListController extends GetxController{
  var employeeList = List<Results>();
  ApiService _apiService = Get.find();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  
  void getEmployeeList() async
  {
    var accessToken = await SharedPref.getData(key:'token');
    print("where is token == ${accessToken}");
    _apiService.retrieveEmployeeInformation(accessToken).then((value){
      if(value !=null){
       employeeList = value.results;
       update();
      }
    });
    
  }
  
}