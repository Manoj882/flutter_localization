

import 'package:json_annotation/json_annotation.dart';
part 'personal_details.g.dart';

@JsonSerializable()
class PersonDetails {
  final String firstName;
  final String? middleName;
  final String lastName;
  final String dob;

  PersonDetails({
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.dob,
  });

  factory PersonDetails.fromJson(Map<String, dynamic> json) => _$PersonDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PersonDetailsToJson(this);

}