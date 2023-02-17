// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jha.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JHAModel _$$_JHAModelFromJson(Map<String, dynamic> json) => _$_JHAModel(
      id: json['id'] as String? ?? "",
      company: json['company'] as String? ?? "",
      segment: json['segment'] as String? ?? "",
      workPlan: json['workPlan'] as String? ?? "",
      date: json['date'] as String? ?? "",
      dayOrNight: json['dayOrNight'] as String? ?? "",
      competentPerson: json['competentPerson'] as String? ?? "",
      supervisor: json['supervisor'] as String? ?? "",
      certifiedPerson: json['certifiedPerson'] as String? ?? "",
      certifiedFlagger: json['certifiedFlagger'] as String? ?? "",
      task: json['task'] as String? ?? "",
      isNight: json['isNight'] as bool? ?? false,
      machineryList: (json['machineryList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      toolsList: (json['toolsList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      ppeList: (json['ppeList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      incidents: (json['incidents'] as List<dynamic>?)
              ?.map((e) => JHAIncidentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      crews: (json['crews'] as List<dynamic>?)
              ?.map((e) => JHACrewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      shades: json['shades'] as bool? ?? false,
      water: json['water'] as bool? ?? false,
      paperCups: json['paperCups'] as bool? ?? false,
      trashes: json['trashes'] as bool? ?? false,
      restrooms: json['restrooms'] as bool? ?? false,
      extinguishers: json['extinguishers'] as bool? ?? false,
      gfcis: json['gfcis'] as bool? ?? false,
      workAreaProtection: json['workAreaProtection'] as bool? ?? false,
      firstAidKit: json['firstAidKit'] as bool? ?? false,
      craneLiftPlan: json['craneLiftPlan'] as bool? ?? false,
      machinery: json['machinery'] as bool? ?? false,
      toolsAndEquipment: json['toolsAndEquipment'] as bool? ?? false,
      excavations: json['excavations'] as bool? ?? false,
      scaffolds: json['scaffolds'] as bool? ?? false,
      utility: json['utility'] as bool? ?? false,
      proximity: json['proximity'] as bool? ?? false,
      confinedSpace: json['confinedSpace'] as bool? ?? false,
      hotWork: json['hotWork'] as bool? ?? false,
    );

Map<String, dynamic> _$$_JHAModelToJson(_$_JHAModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'segment': instance.segment,
      'workPlan': instance.workPlan,
      'date': instance.date,
      'dayOrNight': instance.dayOrNight,
      'competentPerson': instance.competentPerson,
      'supervisor': instance.supervisor,
      'certifiedPerson': instance.certifiedPerson,
      'certifiedFlagger': instance.certifiedFlagger,
      'task': instance.task,
      'isNight': instance.isNight,
      'machineryList': instance.machineryList,
      'toolsList': instance.toolsList,
      'ppeList': instance.ppeList,
      'incidents': instance.incidents,
      'crews': instance.crews,
      'shades': instance.shades,
      'water': instance.water,
      'paperCups': instance.paperCups,
      'trashes': instance.trashes,
      'restrooms': instance.restrooms,
      'extinguishers': instance.extinguishers,
      'gfcis': instance.gfcis,
      'workAreaProtection': instance.workAreaProtection,
      'firstAidKit': instance.firstAidKit,
      'craneLiftPlan': instance.craneLiftPlan,
      'machinery': instance.machinery,
      'toolsAndEquipment': instance.toolsAndEquipment,
      'excavations': instance.excavations,
      'scaffolds': instance.scaffolds,
      'utility': instance.utility,
      'proximity': instance.proximity,
      'confinedSpace': instance.confinedSpace,
      'hotWork': instance.hotWork,
    };
