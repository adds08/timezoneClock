import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'jhacrew.model.freezed.dart';
part 'jhacrew.model.g.dart';

@freezed
class JHACrewModel with _$JHACrewModel {
  @HiveType(typeId: 1, adapterName: 'JHAIncidentModelAdapter')
  @JsonSerializable(explicitToJson: true)
  factory JHACrewModel({
    @HiveField(0) @JsonKey(defaultValue: "") required String name,
    @HiveField(1) @JsonKey(defaultValue: null) String? signature,
  }) = _JHACrewModel;

  factory JHACrewModel.fromJson(Map<String, dynamic> json) => _$JHACrewModelFromJson(json);
}
