import 'package:employee_info_app/model/results.dart';

class EmployeeResponseModel {

  int count;
  List<Results> results;

	EmployeeResponseModel.fromJson(Map<String, dynamic> map):
		count = map["count"],
		results = List<Results>.from(map["results"].map((it) => Results.fromJson(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['count'] = count;
		data['results'] = results != null ? 
			this.results.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}
