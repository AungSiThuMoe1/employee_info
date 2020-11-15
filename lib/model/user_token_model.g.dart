// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTokenModel _$UserTokenModelFromJson(Map<String, dynamic> json) {
  return UserTokenModel(
    json['uid'] as int,
    json['user_context'] == null
        ? null
        : User_context.fromJson(json['user_context'] as Map<String, dynamic>),
    json['company_id'] as int,
    json['access_token'] as String,
    json['expires_in'] as int,
    json['refresh_token'] as String,
    json['refresh_expires_in'] as int,
  );
}

Map<String, dynamic> _$UserTokenModelToJson(UserTokenModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'user_context': instance.user_context,
      'company_id': instance.company_id,
      'access_token': instance.access_token,
      'expires_in': instance.expires_in,
      'refresh_token': instance.refresh_token,
      'refresh_expires_in': instance.refresh_expires_in,
    };
