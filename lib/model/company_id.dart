
class Company_id {

  int id;
  String name;

	Company_id.fromJson(Map<String, dynamic> map):
		id = map["id"],
		name = map["name"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['name'] = name;
		return data;
	}
}
