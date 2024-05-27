// To parse this JSON data, do
//
//     final listModel = listModelFromJson(jsonString);

import 'dart:convert';

ListModel listModelFromJson(String str) => ListModel.fromJson(json.decode(str));

String listModelToJson(ListModel data) => json.encode(data.toJson());

class ListModel {
  String? message;
  Data? data;

  ListModel({
    this.message,
    this.data,
  });

  factory ListModel.fromJson(Map<String, dynamic> json) => ListModel(
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  List<ListElement>? list;
  int? totalCount;

  Data({
    this.list,
    this.totalCount,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    list: json["list"] == null ? [] : List<ListElement>.from(json["list"]!.map((x) => ListElement.fromJson(x))),
    totalCount: json["totalCount"],
  );

  Map<String, dynamic> toJson() => {
    "list": list == null ? [] : List<dynamic>.from(list!.map((x) => x.toJson())),
    "totalCount": totalCount,
  };
}

class ListElement {
  String? id;
  UserId? userId;
  String? contact;
  String? name;
  String? details;
  int? localType;
  int? createdAt;
  int? status;
  int? v;

  ListElement({
    this.id,
    this.userId,
    this.contact,
    this.name,
    this.details,
    this.localType,
    this.createdAt,
    this.status,
    this.v,
  });

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
    id: json["_id"],
    userId: userIdValues.map[json["_userId"]]!,
    contact: json["_contact"],
    name: json["_name"],
    details: json["_details"],
    localType: json["_localType"],
    createdAt: json["_createdAt"],
    status: json["_status"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "_userId": userIdValues.reverse[userId],
    "_contact": contact,
    "_name": name,
    "_details": details,
    "_localType": localType,
    "_createdAt": createdAt,
    "_status": status,
    "__v": v,
  };
}

enum UserId {
  THE_6634_DB7665_F74_A0_FAEB0_ABC9
}

final userIdValues = EnumValues({
  "6634db7665f74a0faeb0abc9": UserId.THE_6634_DB7665_F74_A0_FAEB0_ABC9
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
