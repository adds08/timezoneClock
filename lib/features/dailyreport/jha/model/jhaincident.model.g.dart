// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jhaincident.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JHAIncidentModel _$$_JHAIncidentModelFromJson(Map<String, dynamic> json) =>
    _$_JHAIncidentModel(
      steps: json['steps'] as String? ?? '',
      hazard: json['hazard'] as String? ?? '',
      action: json['action'] as String? ?? '',
    );

Map<String, dynamic> _$$_JHAIncidentModelToJson(_$_JHAIncidentModel instance) =>
    <String, dynamic>{
      'steps': instance.steps,
      'hazard': instance.hazard,
      'action': instance.action,
    };
