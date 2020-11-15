import 'dart:convert';
import 'dart:typed_data';

import 'package:employee_info_app/controller/employee_list_controller.dart';
import 'package:employee_info_app/model/results.dart';
import 'package:employee_info_app/screen/employee_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class EmployeeListScreen extends StatelessWidget {
  EmployeeListController _employeeListController = Get.put(
      EmployeeListController());

  @override
  Widget build(BuildContext context) {
    _employeeListController.getEmployeeList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: GetBuilder<EmployeeListController>(

        builder: (_) {
          if (_.employeeList.isNotEmpty) {
            return ListView.builder(
                itemCount: _.employeeList.length,
                itemBuilder: (context, index) {
                  Results result = _.employeeList[index];
                  Uint8List bytes = Base64Decoder().convert(
                      "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");
                  if (result.image_128 != null)
                    bytes = Base64Decoder().convert(result.image_128);
                  return OneEmployeeUi(bytes: bytes, result: result);
                });
          }else{
            return Center(child: CircularProgressIndicator(),);
          }
        }
      ),
    );
  }
}

class OneEmployeeUi extends StatelessWidget {
  const OneEmployeeUi({
    Key key,
    @required this.bytes,
    @required this.result,
  }) : super(key: key);

  final Uint8List bytes;
  final Results result;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(EmployeeDetailScreen(result));
      },
      child: Card(
        child: Stack(
          children: [
            Row(
              children: [
                bytes.isNotEmpty ? Image.memory(bytes, cacheWidth: 100, width: 100,) : Image.memory(bytes, cacheWidth: 150, width: 150,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(result.name,style: TextStyle(fontWeight: FontWeight.bold,),),
                    result.job_title != null
                        ? Text(result.job_title)
                        : Text(''),
                  ],),
              ],
            ),
            Positioned(
                right: 0,
                bottom: 0,
                top: 0,
                child: Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),
    );
  }
}
