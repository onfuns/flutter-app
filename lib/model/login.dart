import 'package:json_annotation/json_annotation.dart';
part 'login.g.dart';

@JsonSerializable()
class LoginModel {
  LoginModel(this.success, this.message, this.data);

  bool success;
  String message;
  @JsonKey(nullable: true)
  Map data;
  //不同的类使用不同的mixin即可
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
