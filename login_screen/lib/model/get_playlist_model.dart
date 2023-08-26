// // To parse this JSON data, do
// //
// //     final getPlaylistModel = getPlaylistModelFromJson(jsonString);

// import 'dart:convert';

// GetPlaylistModel getPlaylistModelFromJson(String str) => GetPlaylistModel.fromJson(json.decode(str));

// String getPlaylistModelToJson(GetPlaylistModel data) => json.encode(data.toJson());

// class GetPlaylistModel {
//     List<Datum> data;
//     String message;
//     int statusCode;
//     bool success;

//     GetPlaylistModel({
//         required this.data,
//         required this.message,
//         required this.statusCode,
//         required this.success,
//     });

//     factory GetPlaylistModel.fromJson(Map<String, dynamic> json) => GetPlaylistModel(
//         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//         message: json["message"],
//         statusCode: json["StatusCode"],
//         success: json["success"],
//     );

//     Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//         "message": message,
//         "StatusCode": statusCode,
//         "success": success,
//     };
// }

// class Datum {
//     String id;
//     String name;
//     DateTime createdAt;
//     DateTime updatedAt;
//     List<Video> videos;

//     Datum({
//         required this.id,
//         required this.name,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.videos,
//     });

//     factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         id: json["id"],
//         name: json["name"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         videos: List<Video>.from(json["videos"].map((x) => Video.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "videos": List<dynamic>.from(videos.map((x) => x.toJson())),
//     };
// }

// class Video {
//     String id;
//     String videoLink;
//     String name;
//     int order;
//     DateTime createdAt;
//     DateTime updatedAt;

//     Video({
//         required this.id,
//         required this.videoLink,
//         required this.name,
//         required this.order,
//         required this.createdAt,
//         required this.updatedAt,
//     });

//     factory Video.fromJson(Map<String, dynamic> json) => Video(
//         id: json["id"],
//         videoLink: json["videoLink"],
//         name: json["name"],
//         order: json["order"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "videoLink": videoLink,
//         "name": name,
//         "order": order,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//     };
// }




  
GetPlaylistModel
  Use private fields 
class GetPlaylistModel {
  List<Data>? data;
  String? message;
  int? statusCode;
  bool? success;

  GetPlaylistModel({this.data, this.message, this.statusCode, this.success});

  GetPlaylistModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
    statusCode = json['StatusCode'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['StatusCode'] = this.statusCode;
    data['success'] = this.success;
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? createdAt;
  String? updatedAt;
  List<Null>? videos;

  Data({this.id, this.name, this.createdAt, this.updatedAt, this.videos});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['videos'] != null) {
      videos = <Null>[];
      json['videos'].forEach((v) {
        videos!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.videos != null) {
      data['videos'] = this.videos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class GetPlaylistModel {
  List<Data>? data;
  String? message;
  int? statusCode;
  bool? success;

  GetPlaylistModel({this.data, this.message, this.statusCode, this.success});

  GetPlaylistModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
    statusCode = json['StatusCode'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['StatusCode'] = this.statusCode;
    data['success'] = this.success;
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? createdAt;
  String? updatedAt;
  List<Null>? videos;

  Data({this.id, this.name, this.createdAt, this.updatedAt, this.videos});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['videos'] != null) {
      videos = <Null>[];
      json['videos'].forEach((v) {
        videos!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.videos != null) {
      data['videos'] = this.videos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
