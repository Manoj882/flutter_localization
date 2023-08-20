

import 'package:flutter_localization_app/model/personal_details_model/personal_details.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {

  final PersonDetails personDetails;

  UserInfo({required this.personDetails});

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

}