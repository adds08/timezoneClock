import 'package:freezed_annotation/freezed_annotation.dart';

part 'training.model.freezed.dart';
part 'training.model.g.dart';

@freezed
class TrainingModel with _$TrainingModel {
  const factory TrainingModel({
    required String userId,
    required String osha200,
    required String name,
    required String osha10,
    required String trainingC,
    required String trainingA,
    required String contact,
    required String trainingB,
    required String trainingD,
    required String trainingE,
    required String trainingF,
    required String trainingG,
    required String trainingH,
    required String trainingI,
    required String trainingJ,
    required String trainingK,
  }) = _TrainingModel;

  factory TrainingModel.fromJson(Map<String, dynamic> json) => _$TrainingModelFromJson(json);
}
