
class RenewTokenModel {

  String access_token;
  int expires_in;

	RenewTokenModel.fromJson(Map<String, dynamic> map):
		access_token = map["access_token"],
		expires_in = map["expires_in"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['access_token'] = access_token;
		data['expires_in'] = expires_in;
		return data;
	}
}
