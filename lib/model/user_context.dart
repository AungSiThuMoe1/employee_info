import 'package:json_annotation/json_annotation.dart';

part 'user_context.g.dart';
@JsonSerializable()
class User_context {
  String lang;
  String tz;
  int uid;

	User_context(this.lang, this.tz, this.uid);

	factory User_context.fromJson(Map<String,dynamic> json) => _$User_contextFromJson(json);
	Map<String,dynamic> toJosn() => _$User_contextToJson(this);


}
