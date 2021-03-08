import 'dart:convert';
import 'dart:io';
import 'package:YOURDRS_FlutterAPP/blocs/base/base_bloc_event.dart';

abstract class PatientDetailsEvent extends BaseBlocEvent {}
File file;
class UploadImagesToServer extends PatientDetailsEvent{

  String base64Image = base64Encode(file.readAsBytesSync());
  String fileName = file.path.split("/").last;

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class saveImagesToserver extends PatientDetailsEvent{
  String base64Image = base64Encode(file.readAsBytesSync());
  String fileName = file.path.split("/").last;
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
