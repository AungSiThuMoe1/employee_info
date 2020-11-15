// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User_context _$User_contextFromJson(Map<String, dynamic> json) {
  return User_context(
    json['lang'] as String,
    json['tz'] as String,
    json['uid'] as int,
  );
}

Map<String, dynamic> _$User_contextToJson(User_context instance) =>
    <String, dynamic>{
      'lang': instance.lang,
      'tz': instance.tz,
      'uid': instance.uid,
    };
