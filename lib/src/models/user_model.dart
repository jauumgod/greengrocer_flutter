import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String? name, email, phone, cpf, password, id, token;

  UserModel(
      {
      // ignore: invalid_annotation_target
      @JsonKey(name: 'fullname') this.name,
      this.email,
      this.phone,
      this.cpf,
      this.password,
      this.id,
      this.token});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
  @override
  String toString() {
    return "UserModel(name: $name, email: $email, phone: $phone, cpf: $cpf, password: $password, id: $id, token: $token)";
  }
}
