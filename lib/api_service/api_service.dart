import 'package:employee_info_app/model/employee_response_model.dart';
import 'package:employee_info_app/model/refresh_token_request_model.dart';
import 'package:employee_info_app/model/renew_token_model.dart';
import 'package:employee_info_app/model/user_token_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
part 'api_service.g.dart';
@RestApi(baseUrl: "http://54.254.62.118:8069/")
abstract class ApiService{
factory ApiService(Dio dio) = _ApiService;

@GET("/api/auth/get_tokens/?username=aungsithumoe1@gmail.com&password=flutter")
@Headers(<String,dynamic>{
 "content-type" : "text/html",
})
Future<UserTokenModel> retrieveToken();


@GET("api/hr.employee/")
@Headers(<String,dynamic>{
 "content-type" : "text/html",
 'accept': "application/json"
})
Future<EmployeeResponseModel> retrieveEmployeeInformation(@Header("Access-Token") String token);

@POST("/api/auth/refresh_token/")
@Headers(<String,dynamic>{
 "content-type" : "text/html",
 'accept': "application/json"
})
Future<RenewTokenModel> refreshToken(@Query("refresh_token") String refreshToken);

}