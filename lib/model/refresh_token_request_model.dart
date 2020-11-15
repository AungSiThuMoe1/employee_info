class RefreshTokenRequestModel {
  final String refreshToken;

  RefreshTokenRequestModel({this.refreshToken});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['refresh_token'] = refreshToken;
    return data;
  }
}