import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'jhaincident.model.freezed.dart';
part 'jhaincident.model.g.dart';

@freezed
class JHAIncidentModel with _$JHAIncidentModel {
  @HiveType(typeId: 0, adapterName: 'JHAIncidentModelAdapter')
  factory JHAIncidentModel({
    @HiveField(0) @JsonKey(defaultValue: "") required String steps,
    @HiveField(1) @JsonKey(defaultValue: "") required String hazard,
    @HiveField(2) @JsonKey(defaultValue: "") required String action,
  }) = _JHAIncidentModel;

  factory JHAIncidentModel.fromJson(Map<String, dynamic> json) => _$JHAIncidentModelFromJson(json);
}
