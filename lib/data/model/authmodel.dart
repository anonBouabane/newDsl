class Authmode {
  String? resultCode;
  String? fullName;
  int? userStatus;
  String? roleName;
  String? departName;
  String? accessToken;

  Authmode(
      {this.resultCode,
      this.fullName,
      this.userStatus,
      this.roleName,
      this.departName,
      this.accessToken});

  Authmode.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    fullName = json['full_name'];
    userStatus = json['user_status'];
    roleName = json['role_name'];
    departName = json['depart_name'];
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resultCode'] = this.resultCode;
    data['full_name'] = this.fullName;
    data['user_status'] = this.userStatus;
    data['role_name'] = this.roleName;
    data['depart_name'] = this.departName;
    data['accessToken'] = this.accessToken;
    return data;
  }
}
