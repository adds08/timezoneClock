import 'package:LSTime/features/dailyreport/jha/model/jhaincident.model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jha.model.freezed.dart';
part 'jha.model.g.dart';

@freezed
class JHAModel with _$JHAModel {
  factory JHAModel({
    @Default("") String id,
    @Default("") String company,
    @Default("") String segment,
    @Default("") String workPlan,
    @Default("") String date,
    @Default("") String dayOrNight,
    @Default("") String competentPerson,
    @Default("") String supervisor,
    @Default("") String certifiedPerson,
    @Default("") String certifiedFlagger,
    @Default("") String task,
    @Default(false) bool isNight,
    @Default([]) List<String> machineryList,
    @Default([]) List<String> toolsList,
    @Default([]) List<String> ppeList,
    @Default([]) List<JHAIncidentModel> incidents,
    @Default(false) bool shades,
    @Default(false) bool water,
    @Default(false) bool paperCups,
    @Default(false) bool trashes,
    @Default(false) bool restrooms,
    @Default(false) bool extinguishers,
    @Default(false) bool gfcis,
    @Default(false) bool workAreaProtection,
    @Default(false) bool firstAidKit,
    @Default(false) bool craneLiftPlan,
    @Default(false) bool machinery,
    @Default(false) bool toolsAndEquipment,
    @Default(false) bool excavations,
    @Default(false) bool scaffolds,
    @Default(false) bool utility,
    @Default(false) bool proximity,
    @Default(false) bool confinedSpace,
    @Default(false) bool hotWork,
  }) = _JHAModel;

  factory JHAModel.init() => JHAModel(id: UniqueKey().toString());

  factory JHAModel.fromJson(Map<String, dynamic> json) => _$JHAModelFromJson(json);
}
