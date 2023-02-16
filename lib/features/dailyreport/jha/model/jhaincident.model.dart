import 'package:freezed_annotation/freezed_annotation.dart';

part 'jhaincident.model.freezed.dart';
part 'jhaincident.model.g.dart';

@freezed
class JHAIncidentModel with _$JHAIncidentModel {
  factory JHAIncidentModel({
    @JsonKey(defaultValue: "") required String steps,
    @JsonKey(defaultValue: "") required String hazard,
    @JsonKey(defaultValue: "") required String action,
  }) = _JHAIncidentModel;

  factory JHAIncidentModel.fromJson(Map<String, dynamic> json) => _$JHAIncidentModelFromJson(json);
}
