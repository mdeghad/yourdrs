import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:YOURDRS_FlutterAPP/blocs/base/base_bloc.dart';
import 'package:YOURDRS_FlutterAPP/blocs/patient_details/patient_details_event.dart';
import 'package:YOURDRS_FlutterAPP/blocs/patient_details/patient_details_state.dart';


  class PatientDetailsBloc extends BaseBloc<PatientDetailsEvent, PatientDetailsState> {
    PatientDetailsBloc() : super(PatientDetailsState.initial());



    @override
    Stream<PatientDetailsState> mapEventToState(
        PatientDetailsEvent event) async* {
      print("mapEventToState=$event");



    }

  }


