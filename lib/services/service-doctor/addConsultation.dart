import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
class AddConsultation {
  Dio dio = new Dio();
  static final AddConsultation _instance = AddConsultation._internal();
  factory AddConsultation() => _instance;
  AddConsultation._internal() {
    dio = Dio(BaseOptions(
        connectTimeout: 150000, receiveTimeout: 10000));
    initializeInterceptor();
  }
  void initializeInterceptor() {
    dio.interceptors.add(
      PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90),
    );}


  addConsultation(date,time,name,filenumber,weight,
      height,reasonofconsulatation,diagnosticresult,notes) async {
    try {
      return await dio.post(
          'https://salty-shelf-68011.herokuapp.com/consultation/addnewconsultation',
          data:{"date":date,"time":time,"name":name,"filenumber":filenumber,"weight":weight,
            "height":height,"resonofconsulatation":reasonofconsulatation,
            "diagnosticresult":diagnosticresult,"notes":notes},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      print(e.response.data);
      Fluttertoast.showToast(
          msg: e.response.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }
}
