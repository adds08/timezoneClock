import 'package:LSTime/features/dailyreport/jha/model/jhacrew.model.dart';
import 'package:LSTime/features/dailyreport/jha/model/jhaincident.model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'jha.model.freezed.dart';
part 'jha.model.g.dart';

@freezed
class JHAModel with _$JHAModel {
  @HiveType(typeId: 2, adapterName: 'JHAModelAdapter')
  factory JHAModel({
    @HiveField(0) @Default("") String id,
    @HiveField(1) @Default("") String company,
    @HiveField(2) @Default("") String segment,
    @HiveField(3) @Default("") String workPlan,
    @HiveField(4) @Default("") String date,
    @HiveField(5) @Default("") String dayOrNight,
    @HiveField(6) @Default("") String competentPerson,
    @HiveField(7) @Default("") String supervisor,
    @HiveField(8) @Default("") String certifiedPerson,
    @HiveField(9) @Default("") String certifiedFlagger,
    @HiveField(10) @Default("") String task,
    @HiveField(11) @Default(false) bool isNight,
    @HiveField(12) @Default([]) List<String> machineryList,
    @HiveField(13) @Default([]) List<String> toolsList,
    @HiveField(14) @Default([]) List<String> ppeList,
    @HiveField(15) @Default([]) List<JHAIncidentModel> incidents,
    @HiveField(16) @Default([]) List<JHACrewModel> crews,
    @HiveField(17) @Default(false) bool shades,
    @HiveField(18) @Default(false) bool water,
    @HiveField(19) @Default(false) bool paperCups,
    @HiveField(20) @Default(false) bool trashes,
    @HiveField(21) @Default(false) bool restrooms,
    @HiveField(22) @Default(false) bool extinguishers,
    @HiveField(23) @Default(false) bool gfcis,
    @HiveField(24) @Default(false) bool workAreaProtection,
    @HiveField(25) @Default(false) bool firstAidKit,
    @HiveField(26) @Default(false) bool craneLiftPlan,
    @HiveField(27) @Default(false) bool machinery,
    @HiveField(28) @Default(false) bool toolsAndEquipment,
    @HiveField(29) @Default(false) bool excavations,
    @HiveField(30) @Default(false) bool scaffolds,
    @HiveField(31) @Default(false) bool utility,
    @HiveField(32) @Default(false) bool proximity,
    @HiveField(33) @Default(false) bool confinedSpace,
    @HiveField(34) @Default(false) bool hotWork,
  }) = _JHAModel;

  factory JHAModel.init() => JHAModel(id: UniqueKey().toString());

  factory JHAModel.fromJson(Map<String, dynamic> json) => _$JHAModelFromJson(json);
}
