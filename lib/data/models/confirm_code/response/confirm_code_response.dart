class ConfirmCodeResponse {
  String? refreshToken;
  String? accessToken;

  ConfirmCodeResponse({this.refreshToken, this.accessToken});

  ConfirmCodeResponse.fromJson(Map<String, dynamic> json) {
    refreshToken = json['refresh-token'];
    accessToken = json['access-token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['refresh-token'] = accessToken;
    data['access-token'] = refreshToken;
    return data;
  }
}
