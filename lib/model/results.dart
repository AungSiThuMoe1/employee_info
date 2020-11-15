import 'package:employee_info_app/model/department_id.dart';
import 'package:employee_info_app/model/job_id.dart';
import 'package:employee_info_app/model/company_id.dart';
import 'package:employee_info_app/model/parent_id.dart';
import 'package:employee_info_app/model/insurance_type_id.dart';

class Results {

  int id;
  String name;
  String image_128;
  Object job_title;
  Department_id department_id;
  Job_id job_id;
  Object work_location;
  Object mobile_phone;
  Object work_email;
  Company_id company_id;
  Parent_id parent_id;
  Object ssb_no;
  Object ssb_issue_date;
  Object ssb_temporary_card;
  Object ssb_temporary_card_no;
  Object smart_card;
  Object smart_card_issue_date;
  Object smart_card_no;
  String fingerprint_id;
  Object insurance_no;
  Object insurance_company;
  Insurance_type_id insurance_type_id;
  double employee_insurance;
  double employer_insurance;
  Object insurance_start_date;
  Object insurance_end_date;
  Object insurance_tax_exemption;
  List<Object> child_ids;

	Results.fromJson(Map<String, dynamic> map): 
		id = map["id"],
		name = map["name"],
		image_128 = map["image_128"],
		job_title = map["job_title"],
		department_id = Department_id.fromJson(map["department_id"]),
		job_id = Job_id.fromJson(map["job_id"]),
		work_location = map["work_location"],
		mobile_phone = map["mobile_phone"],
		work_email = map["work_email"],
		company_id = Company_id.fromJson(map["company_id"]),
		parent_id = Parent_id.fromJson(map["parent_id"]),
		ssb_no = map["ssb_no"],
		ssb_issue_date = map["ssb_issue_date"],
		ssb_temporary_card = map["ssb_temporary_card"],
		ssb_temporary_card_no = map["ssb_temporary_card_no"],
		smart_card = map["smart_card"],
		smart_card_issue_date = map["smart_card_issue_date"],
		smart_card_no = map["smart_card_no"],
		fingerprint_id = map["fingerprint_id"],
		insurance_no = map["insurance_no"],
		insurance_company = map["insurance_company"],
		insurance_type_id = Insurance_type_id.fromJson(map["insurance_type_id"]),
		employee_insurance = map["employee_insurance"],
		employer_insurance = map["employer_insurance"],
		insurance_start_date = map["insurance_start_date"],
		insurance_end_date = map["insurance_end_date"],
		insurance_tax_exemption = map["insurance_tax_exemption"],
		child_ids = map["child_ids"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['name'] = name;
		data['image_128'] = image_128;
		data['job_title'] = job_title;
		data['department_id'] = department_id == null ? null : department_id.toJson();
		data['job_id'] = job_id == null ? null : job_id.toJson();
		data['work_location'] = work_location;
		data['mobile_phone'] = mobile_phone;
		data['work_email'] = work_email;
		data['company_id'] = company_id == null ? null : company_id.toJson();
		data['parent_id'] = parent_id == null ? null : parent_id.toJson();
		data['ssb_no'] = ssb_no;
		data['ssb_issue_date'] = ssb_issue_date;
		data['ssb_temporary_card'] = ssb_temporary_card;
		data['ssb_temporary_card_no'] = ssb_temporary_card_no;
		data['smart_card'] = smart_card;
		data['smart_card_issue_date'] = smart_card_issue_date;
		data['smart_card_no'] = smart_card_no;
		data['fingerprint_id'] = fingerprint_id;
		data['insurance_no'] = insurance_no;
		data['insurance_company'] = insurance_company;
		data['insurance_type_id'] = insurance_type_id == null ? null : insurance_type_id.toJson();
		data['employee_insurance'] = employee_insurance;
		data['employer_insurance'] = employer_insurance;
		data['insurance_start_date'] = insurance_start_date;
		data['insurance_end_date'] = insurance_end_date;
		data['insurance_tax_exemption'] = insurance_tax_exemption;
		data['child_ids'] = child_ids;
		return data;
	}
}
