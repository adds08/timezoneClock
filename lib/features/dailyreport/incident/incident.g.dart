// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IncidentForm _$$_IncidentFormFromJson(Map<String, dynamic> json) =>
    _$_IncidentForm(
      id: json['id'] as String? ?? "",
      date: json['date'] as String? ?? "",
      time: json['time'] as String? ?? "",
      superintendent: json['superintendent'] as String? ?? "",
      foreman: json['foreman'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      project: json['project'] as String? ?? "",
      address: json['address'] as String? ?? "",
      involved: (json['involved'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      care:
          (json['care'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      pictures: json['pictures'] as bool? ?? false,
      description: json['description'] as String? ?? "",
      witness: json['witness'] as String? ?? "",
      witnessDescription: json['witnessDescription'] as String? ?? "",
    );

Map<String, dynamic> _$$_IncidentFormToJson(_$_IncidentForm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'time': instance.time,
      'superintendent': instance.superintendent,
      'foreman': instance.foreman,
      'phone': instance.phone,
      'project': instance.project,
      'address': instance.address,
      'involved': instance.involved,
      'care': instance.care,
      'pictures': instance.pictures,
      'description': instance.description,
      'witness': instance.witness,
      'witnessDescription': instance.witnessDescription,
    };
