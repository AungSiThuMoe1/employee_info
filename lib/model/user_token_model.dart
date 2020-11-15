import 'package:employee_info_app/model/user_context.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_token_model.g.dart';
@JsonSerializable()
class UserTokenModel {
  int uid;
  User_context user_context;
  int company_id;
  String access_token;
  int expires_in;
  String refresh_token;
  int refresh_expires_in;

	UserTokenModel(
      this.uid,
      this.user_context,
      this.company_id,
      this.access_token,
      this.expires_in,
      this.refresh_token,
      this.refresh_expires_in);

	factory UserTokenModel.fromJson(Map<String,dynamic> json) => _$UserTokenModelFromJson(json);
	Map<String,dynamic> toJson() => _$UserTokenModelToJson(this);

}
