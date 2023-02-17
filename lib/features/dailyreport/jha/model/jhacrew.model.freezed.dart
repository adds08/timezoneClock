// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jhacrew.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JHACrewModel _$JHACrewModelFromJson(Map<String, dynamic> json) {
  return _JHACrewModel.fromJson(json);
}

/// @nodoc
mixin _$JHACrewModel {
  @HiveField(0)
  @JsonKey(defaultValue: "")
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(defaultValue: null)
  String? get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JHACrewModelCopyWith<JHACrewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JHACrewModelCopyWith<$Res> {
  factory $JHACrewModelCopyWith(
          JHACrewModel value, $Res Function(JHACrewModel) then) =
      _$JHACrewModelCopyWithImpl<$Res, JHACrewModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(defaultValue: "") String name,
      @HiveField(1) @JsonKey(defaultValue: null) String? signature});
}

/// @nodoc
class _$JHACrewModelCopyWithImpl<$Res, $Val extends JHACrewModel>
    implements $JHACrewModelCopyWith<$Res> {
  _$JHACrewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? signature = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JHACrewModelCopyWith<$Res>
    implements $JHACrewModelCopyWith<$Res> {
  factory _$$_JHACrewModelCopyWith(
          _$_JHACrewModel value, $Res Function(_$_JHACrewModel) then) =
      __$$_JHACrewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(defaultValue: "") String name,
      @HiveField(1) @JsonKey(defaultValue: null) String? signature});
}

/// @nodoc
class __$$_JHACrewModelCopyWithImpl<$Res>
    extends _$JHACrewModelCopyWithImpl<$Res, _$_JHACrewModel>
    implements _$$_JHACrewModelCopyWith<$Res> {
  __$$_JHACrewModelCopyWithImpl(
      _$_JHACrewModel _value, $Res Function(_$_JHACrewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? signature = freezed,
  }) {
    return _then(_$_JHACrewModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1, adapterName: 'JHAIncidentModelAdapter')
@JsonSerializable(explicitToJson: true)
class _$_JHACrewModel implements _JHACrewModel {
  _$_JHACrewModel(
      {@HiveField(0) @JsonKey(defaultValue: "") required this.name,
      @HiveField(1) @JsonKey(defaultValue: null) this.signature});

  factory _$_JHACrewModel.fromJson(Map<String, dynamic> json) =>
      _$$_JHACrewModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(defaultValue: "")
  final String name;
  @override
  @HiveField(1)
  @JsonKey(defaultValue: null)
  final String? signature;

  @override
  String toString() {
    return 'JHACrewModel(name: $name, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JHACrewModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, signature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JHACrewModelCopyWith<_$_JHACrewModel> get copyWith =>
      __$$_JHACrewModelCopyWithImpl<_$_JHACrewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JHACrewModelToJson(
      this,
    );
  }
}

abstract class _JHACrewModel implements JHACrewModel {
  factory _JHACrewModel(
          {@HiveField(0) @JsonKey(defaultValue: "") required final String name,
          @HiveField(1) @JsonKey(defaultValue: null) final String? signature}) =
      _$_JHACrewModel;

  factory _JHACrewModel.fromJson(Map<String, dynamic> json) =
      _$_JHACrewModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(defaultValue: "")
  String get name;
  @override
  @HiveField(1)
  @JsonKey(defaultValue: null)
  String? get signature;
  @override
  @JsonKey(ignore: true)
  _$$_JHACrewModelCopyWith<_$_JHACrewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
