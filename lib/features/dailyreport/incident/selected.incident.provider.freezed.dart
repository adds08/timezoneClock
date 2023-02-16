// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected.incident.provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedIncidentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncidentForm incident) init,
    required TResult Function() updating,
    required TResult Function(IncidentForm incident) updated,
    required TResult Function(String? errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncidentForm incident)? init,
    TResult? Function()? updating,
    TResult? Function(IncidentForm incident)? updated,
    TResult? Function(String? errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncidentForm incident)? init,
    TResult Function()? updating,
    TResult Function(IncidentForm incident)? updated,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Updating value) updating,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Updating value)? updating,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Updating value)? updating,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedIncidentStateCopyWith<$Res> {
  factory $SelectedIncidentStateCopyWith(SelectedIncidentState value,
          $Res Function(SelectedIncidentState) then) =
      _$SelectedIncidentStateCopyWithImpl<$Res, SelectedIncidentState>;
}

/// @nodoc
class _$SelectedIncidentStateCopyWithImpl<$Res,
        $Val extends SelectedIncidentState>
    implements $SelectedIncidentStateCopyWith<$Res> {
  _$SelectedIncidentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
  @useResult
  $Res call({IncidentForm incident});

  $IncidentFormCopyWith<$Res> get incident;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res>
    extends _$SelectedIncidentStateCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incident = null,
  }) {
    return _then(_$Init(
      null == incident
          ? _value.incident
          : incident // ignore: cast_nullable_to_non_nullable
              as IncidentForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IncidentFormCopyWith<$Res> get incident {
    return $IncidentFormCopyWith<$Res>(_value.incident, (value) {
      return _then(_value.copyWith(incident: value));
    });
  }
}

/// @nodoc

class _$Init implements Init {
  const _$Init(this.incident);

  @override
  final IncidentForm incident;

  @override
  String toString() {
    return 'SelectedIncidentState.init(incident: $incident)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Init &&
            (identical(other.incident, incident) ||
                other.incident == incident));
  }

  @override
  int get hashCode => Object.hash(runtimeType, incident);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitCopyWith<_$Init> get copyWith =>
      __$$InitCopyWithImpl<_$Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncidentForm incident) init,
    required TResult Function() updating,
    required TResult Function(IncidentForm incident) updated,
    required TResult Function(String? errorMessage) error,
  }) {
    return init(incident);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncidentForm incident)? init,
    TResult? Function()? updating,
    TResult? Function(IncidentForm incident)? updated,
    TResult? Function(String? errorMessage)? error,
  }) {
    return init?.call(incident);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncidentForm incident)? init,
    TResult Function()? updating,
    TResult Function(IncidentForm incident)? updated,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(incident);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Updating value) updating,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Updating value)? updating,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Updating value)? updating,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SelectedIncidentState {
  const factory Init(final IncidentForm incident) = _$Init;

  IncidentForm get incident;
  @JsonKey(ignore: true)
  _$$InitCopyWith<_$Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatingCopyWith<$Res> {
  factory _$$UpdatingCopyWith(
          _$Updating value, $Res Function(_$Updating) then) =
      __$$UpdatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatingCopyWithImpl<$Res>
    extends _$SelectedIncidentStateCopyWithImpl<$Res, _$Updating>
    implements _$$UpdatingCopyWith<$Res> {
  __$$UpdatingCopyWithImpl(_$Updating _value, $Res Function(_$Updating) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Updating implements Updating {
  const _$Updating();

  @override
  String toString() {
    return 'SelectedIncidentState.updating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Updating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncidentForm incident) init,
    required TResult Function() updating,
    required TResult Function(IncidentForm incident) updated,
    required TResult Function(String? errorMessage) error,
  }) {
    return updating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncidentForm incident)? init,
    TResult? Function()? updating,
    TResult? Function(IncidentForm incident)? updated,
    TResult? Function(String? errorMessage)? error,
  }) {
    return updating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncidentForm incident)? init,
    TResult Function()? updating,
    TResult Function(IncidentForm incident)? updated,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Updating value) updating,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Updating value)? updating,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Updating value)? updating,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class Updating implements SelectedIncidentState {
  const factory Updating() = _$Updating;
}

/// @nodoc
abstract class _$$UpdatedCopyWith<$Res> {
  factory _$$UpdatedCopyWith(_$Updated value, $Res Function(_$Updated) then) =
      __$$UpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({IncidentForm incident});

  $IncidentFormCopyWith<$Res> get incident;
}

/// @nodoc
class __$$UpdatedCopyWithImpl<$Res>
    extends _$SelectedIncidentStateCopyWithImpl<$Res, _$Updated>
    implements _$$UpdatedCopyWith<$Res> {
  __$$UpdatedCopyWithImpl(_$Updated _value, $Res Function(_$Updated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incident = null,
  }) {
    return _then(_$Updated(
      null == incident
          ? _value.incident
          : incident // ignore: cast_nullable_to_non_nullable
              as IncidentForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IncidentFormCopyWith<$Res> get incident {
    return $IncidentFormCopyWith<$Res>(_value.incident, (value) {
      return _then(_value.copyWith(incident: value));
    });
  }
}

/// @nodoc

class _$Updated implements Updated {
  const _$Updated(this.incident);

  @override
  final IncidentForm incident;

  @override
  String toString() {
    return 'SelectedIncidentState.updated(incident: $incident)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Updated &&
            (identical(other.incident, incident) ||
                other.incident == incident));
  }

  @override
  int get hashCode => Object.hash(runtimeType, incident);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedCopyWith<_$Updated> get copyWith =>
      __$$UpdatedCopyWithImpl<_$Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncidentForm incident) init,
    required TResult Function() updating,
    required TResult Function(IncidentForm incident) updated,
    required TResult Function(String? errorMessage) error,
  }) {
    return updated(incident);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncidentForm incident)? init,
    TResult? Function()? updating,
    TResult? Function(IncidentForm incident)? updated,
    TResult? Function(String? errorMessage)? error,
  }) {
    return updated?.call(incident);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncidentForm incident)? init,
    TResult Function()? updating,
    TResult Function(IncidentForm incident)? updated,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(incident);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Updating value) updating,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Updating value)? updating,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Updating value)? updating,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class Updated implements SelectedIncidentState {
  const factory Updated(final IncidentForm incident) = _$Updated;

  IncidentForm get incident;
  @JsonKey(ignore: true)
  _$$UpdatedCopyWith<_$Updated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$SelectedIncidentStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$Error(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SelectedIncidentState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncidentForm incident) init,
    required TResult Function() updating,
    required TResult Function(IncidentForm incident) updated,
    required TResult Function(String? errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncidentForm incident)? init,
    TResult? Function()? updating,
    TResult? Function(IncidentForm incident)? updated,
    TResult? Function(String? errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncidentForm incident)? init,
    TResult Function()? updating,
    TResult Function(IncidentForm incident)? updated,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Updating value) updating,
    required TResult Function(Updated value) updated,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Updating value)? updating,
    TResult? Function(Updated value)? updated,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Updating value)? updating,
    TResult Function(Updated value)? updated,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SelectedIncidentState {
  const factory Error(final String? errorMessage) = _$Error;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
