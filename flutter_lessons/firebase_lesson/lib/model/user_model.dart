import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel({this.id, this.name, this.surname, this.phoneNumber, this.email});

  final String? id;
  final String? name;
  final String? surname;
  final String? phoneNumber;
  final String? email;

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, surname, phoneNumber, email];
}
