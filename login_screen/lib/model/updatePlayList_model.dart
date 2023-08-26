class UpdatePlaylistModel {
  String? message;
  List<Null>? data;
  int? statusCode;
  bool? success;

  UpdatePlaylistModel({this.message, this.data, this.statusCode, this.success});

  UpdatePlaylistModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Null>[];
      json['data'].forEach((v) {
       // data!.add(new Null.fromJson(v));
      });
    }
    statusCode = json['statusCode'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
     // data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['statusCode'] = this.statusCode;
    data['success'] = this.success;
    return data;
  }
}

