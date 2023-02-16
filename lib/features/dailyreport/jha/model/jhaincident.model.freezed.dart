// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jhaincident.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JHAIncidentModel _$JHAIncidentModelFromJson(Map<String, dynamic> json) {
  return _JHAIncidentModel.fromJson(json);
}

/// @nodoc
mixin _$JHAIncidentModel {
  @JsonKey(defaultValue: "")
  String get steps => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get hazard => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JHAIncidentModelCopyWith<JHAIncidentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JHAIncidentModelCopyWith<$Res> {
  factory $JHAIncidentModelCopyWith(
          JHAIncidentModel value, $Res Function(JHAIncidentModel) then) =
      _$JHAIncidentModelCopyWithImpl<$Res, JHAIncidentModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: "") String steps,
      @JsonKey(defaultValue: "") String hazard,
      @JsonKey(defaultValue: "") String action});
}

/// @nodoc
class _$JHAIncidentModelCopyWithImpl<$Res, $Val extends JHAIncidentModel>
    implements $JHAIncidentModelCopyWith<$Res> {
  _$JHAIncidentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? hazard = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as String,
      hazard: null == hazard
          ? _value.hazard
          : hazard // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JHAIncidentModelCopyWith<$Res>
    implements $JHAIncidentModelCopyWith<$Res> {
  factory _$$_JHAIncidentModelCopyWith(
          _$_JHAIncidentModel value, $Res Function(_$_JHAIncidentModel) then) =
      __$$_JHAIncidentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: "") String steps,
      @JsonKey(defaultValue: "") String hazard,
      @JsonKey(defaultValue: "") String action});
}

/// @nodoc
class __$$_JHAIncidentModelCopyWithImpl<$Res>
    extends _$JHAIncidentModelCopyWithImpl<$Res, _$_JHAIncidentModel>
    implements _$$_JHAIncidentModelCopyWith<$Res> {
  __$$_JHAIncidentModelCopyWithImpl(
      _$_JHAIncidentModel _value, $Res Function(_$_JHAIncidentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? hazard = null,
    Object? action = null,
  }) {
    return _then(_$_JHAIncidentModel(
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as String,
      hazard: null == hazard
          ? _value.hazard
          : hazard // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JHAIncidentModel implements _JHAIncidentModel {
  _$_JHAIncidentModel(
      {@JsonKey(defaultValue: "") required this.steps,
      @JsonKey(defaultValue: "") required this.hazard,
      @JsonKey(defaultValue: "") required this.action});

  factory _$_JHAIncidentModel.fromJson(Map<String, dynamic> json) =>
      _$$_JHAIncidentModelFromJson(json);

  @override
  @JsonKey(defaultValue: "")
  final String steps;
  @override
  @JsonKey(defaultValue: "")
  final String hazard;
  @override
  @JsonKey(defaultValue: "")
  final String action;

  @override
  String toString() {
    return 'JHAIncidentModel(steps: $steps, hazard: $hazard, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JHAIncidentModel &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.hazard, hazard) || other.hazard == hazard) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, steps, hazard, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JHAIncidentModelCopyWith<_$_JHAIncidentModel> get copyWith =>
      __$$_JHAIncidentModelCopyWithImpl<_$_JHAIncidentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JHAIncidentModelToJson(
      this,
    );
  }
}

abstract class _JHAIncidentModel implements JHAIncidentModel {
  factory _JHAIncidentModel(
          {@JsonKey(defaultValue: "") required final String steps,
          @JsonKey(defaultValue: "") required final String hazard,
          @JsonKey(defaultValue: "") required final String action}) =
      _$_JHAIncidentModel;

  factory _JHAIncidentModel.fromJson(Map<String, dynamic> json) =
      _$_JHAIncidentModel.fromJson;

  @override
  @JsonKey(defaultValue: "")
  String get steps;
  @override
  @JsonKey(defaultValue: "")
  String get hazard;
  @override
  @JsonKey(defaultValue: "")
  String get action;
  @override
  @JsonKey(ignore: true)
  _$$_JHAIncidentModelCopyWith<_$_JHAIncidentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
