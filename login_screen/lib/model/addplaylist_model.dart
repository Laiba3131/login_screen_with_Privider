class AddPlaylistModel {
  String? id;
  String? message;
  int? statusCode;
  bool? success;

  AddPlaylistModel({this.id, this.message, this.statusCode, this.success});

  AddPlaylistModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    message = json['message'];
    statusCode = json['StatusCode'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['message'] = this.message;
    data['StatusCode'] = this.statusCode;
    data['success'] = this.success;
    return data;
  }
}