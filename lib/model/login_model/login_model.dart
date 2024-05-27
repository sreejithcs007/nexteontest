// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String? message;
  Data? data;

  LoginModel({
    this.message,
    this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  String? id;
  String? name;
  String? email;
  String? password;
  String? securityQuestionAnswer;
  int? age;
  int? avatharIndex;
  int? createdAt;
  int? status;
  int? v;

  Data({
    this.id,
    this.name,
    this.email,
    this.password,
    this.securityQuestionAnswer,
    this.age,
    this.avatharIndex,
    this.createdAt,
    this.status,
    this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["_id"],
    name: json["_name"],
    email: json["_email"],
    password: json["_password"],
    securityQuestionAnswer: json["_securityQuestionAnswer"],
    age: json["_age"],
    avatharIndex: json["_avatharIndex"],
    createdAt: json["_createdAt"],
    status: json["_status"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "_name": name,
    "_email": email,
    "_password": password,
    "_securityQuestionAnswer": securityQuestionAnswer,
    "_age": age,
    "_avatharIndex": avatharIndex,
    "_createdAt": createdAt,
    "_status": status,
    "__v": v,
  };
}
