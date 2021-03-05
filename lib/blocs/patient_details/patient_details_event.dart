import 'dart:io';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:YOURDRS_FlutterAPP/blocs/base/base_bloc_event.dart';

abstract class PatientDetailsEvent extends BaseBlocEvent {}

class UploadImages extends PatientDetailsEvent{
  String filename;

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class openGallerySelectImage extends PatientDetailsEvent{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
