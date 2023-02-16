import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'incident.freezed.dart';
part 'incident.g.dart';

@freezed
class IncidentForm with _$IncidentForm {
  factory IncidentForm({
    @Default("") String id,
    @Default("") String date,
    @Default("") String time,
    @Default("") String superintendent,
    @Default("") String foreman,
    @Default("") String phone,
    @Default("") String project,
    @Default("") String address,
    @Default([]) List<String> involved,
    @Default([]) List<String> care,
    @Default(false) bool pictures,
    @Default("") String description,
    @Default("") String witness,
    @Default("") String witnessDescription,
  }) = _IncidentForm;
  factory IncidentForm.init() => IncidentForm(id: UniqueKey().toString());
  factory IncidentForm.fromJson(Map<String, dynamic> json) => _$IncidentFormFromJson(json);
}
