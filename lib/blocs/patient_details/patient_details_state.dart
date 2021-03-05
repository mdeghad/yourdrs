import 'package:YOURDRS_FlutterAPP/blocs/base/base_bloc_state.dart';
import 'package:YOURDRS_FlutterAPP/ui/patient_details/patient_dictation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientDetailsState extends BaseBlocState {
  final bool isLoading;
  final String errorMsg;
 final bool widgetVisible;
  final Patient_Dectation patient_dectation;


  factory PatientDetailsState.initial() => PatientDetailsState(
    widgetVisible:true,
    errorMsg: null,
    isLoading: false,
    patient_dectation: null,
  );

  PatientDetailsState reset() => PatientDetailsState.initial();

  PatientDetailsState({
    this.isLoading = false,
    this.errorMsg,
    this.patient_dectation, this.widgetVisible=true,
  });

  @override
  List<Object> get props =>
      [this.isLoading, this.errorMsg, this.patient_dectation,this.widgetVisible];

  PatientDetailsState copyWith({
    bool isLoading,
    String errorMsg,
    Patient_Dectation patient_dectation,
    bool widgetVisible,
  }) {
    return new PatientDetailsState(
      isLoading: isLoading ?? this.isLoading,
      errorMsg: errorMsg ?? this.errorMsg,
      patient_dectation: patient_dectation ?? this.patient_dectation,
      widgetVisible: widgetVisible??this.widgetVisible,

    );
  }

  @override
  String toString() {
    return 'patient_dectationMainState{isLoading: $isLoading, errorMsg: $errorMsg, teamInvitesResponse: $patient_dectation,widgetVisible:$widgetVisible,}';
  }
}
