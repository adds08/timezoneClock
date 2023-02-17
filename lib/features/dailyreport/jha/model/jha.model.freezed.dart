// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jha.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JHAModel _$JHAModelFromJson(Map<String, dynamic> json) {
  return _JHAModel.fromJson(json);
}

/// @nodoc
mixin _$JHAModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get company => throw _privateConstructorUsedError;
  @HiveField(2)
  String get segment => throw _privateConstructorUsedError;
  @HiveField(3)
  String get workPlan => throw _privateConstructorUsedError;
  @HiveField(4)
  String get date => throw _privateConstructorUsedError;
  @HiveField(5)
  String get dayOrNight => throw _privateConstructorUsedError;
  @HiveField(6)
  String get competentPerson => throw _privateConstructorUsedError;
  @HiveField(7)
  String get supervisor => throw _privateConstructorUsedError;
  @HiveField(8)
  String get certifiedPerson => throw _privateConstructorUsedError;
  @HiveField(9)
  String get certifiedFlagger => throw _privateConstructorUsedError;
  @HiveField(10)
  String get task => throw _privateConstructorUsedError;
  @HiveField(11)
  bool get isNight => throw _privateConstructorUsedError;
  @HiveField(12)
  List<String> get machineryList => throw _privateConstructorUsedError;
  @HiveField(13)
  List<String> get toolsList => throw _privateConstructorUsedError;
  @HiveField(14)
  List<String> get ppeList => throw _privateConstructorUsedError;
  @HiveField(15)
  List<JHAIncidentModel> get incidents => throw _privateConstructorUsedError;
  @HiveField(16)
  List<JHACrewModel> get crews => throw _privateConstructorUsedError;
  @HiveField(17)
  bool get shades => throw _privateConstructorUsedError;
  @HiveField(18)
  bool get water => throw _privateConstructorUsedError;
  @HiveField(19)
  bool get paperCups => throw _privateConstructorUsedError;
  @HiveField(20)
  bool get trashes => throw _privateConstructorUsedError;
  @HiveField(21)
  bool get restrooms => throw _privateConstructorUsedError;
  @HiveField(22)
  bool get extinguishers => throw _privateConstructorUsedError;
  @HiveField(23)
  bool get gfcis => throw _privateConstructorUsedError;
  @HiveField(24)
  bool get workAreaProtection => throw _privateConstructorUsedError;
  @HiveField(25)
  bool get firstAidKit => throw _privateConstructorUsedError;
  @HiveField(26)
  bool get craneLiftPlan => throw _privateConstructorUsedError;
  @HiveField(27)
  bool get machinery => throw _privateConstructorUsedError;
  @HiveField(28)
  bool get toolsAndEquipment => throw _privateConstructorUsedError;
  @HiveField(29)
  bool get excavations => throw _privateConstructorUsedError;
  @HiveField(30)
  bool get scaffolds => throw _privateConstructorUsedError;
  @HiveField(31)
  bool get utility => throw _privateConstructorUsedError;
  @HiveField(32)
  bool get proximity => throw _privateConstructorUsedError;
  @HiveField(33)
  bool get confinedSpace => throw _privateConstructorUsedError;
  @HiveField(34)
  bool get hotWork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JHAModelCopyWith<JHAModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JHAModelCopyWith<$Res> {
  factory $JHAModelCopyWith(JHAModel value, $Res Function(JHAModel) then) =
      _$JHAModelCopyWithImpl<$Res, JHAModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String company,
      @HiveField(2) String segment,
      @HiveField(3) String workPlan,
      @HiveField(4) String date,
      @HiveField(5) String dayOrNight,
      @HiveField(6) String competentPerson,
      @HiveField(7) String supervisor,
      @HiveField(8) String certifiedPerson,
      @HiveField(9) String certifiedFlagger,
      @HiveField(10) String task,
      @HiveField(11) bool isNight,
      @HiveField(12) List<String> machineryList,
      @HiveField(13) List<String> toolsList,
      @HiveField(14) List<String> ppeList,
      @HiveField(15) List<JHAIncidentModel> incidents,
      @HiveField(16) List<JHACrewModel> crews,
      @HiveField(17) bool shades,
      @HiveField(18) bool water,
      @HiveField(19) bool paperCups,
      @HiveField(20) bool trashes,
      @HiveField(21) bool restrooms,
      @HiveField(22) bool extinguishers,
      @HiveField(23) bool gfcis,
      @HiveField(24) bool workAreaProtection,
      @HiveField(25) bool firstAidKit,
      @HiveField(26) bool craneLiftPlan,
      @HiveField(27) bool machinery,
      @HiveField(28) bool toolsAndEquipment,
      @HiveField(29) bool excavations,
      @HiveField(30) bool scaffolds,
      @HiveField(31) bool utility,
      @HiveField(32) bool proximity,
      @HiveField(33) bool confinedSpace,
      @HiveField(34) bool hotWork});
}

/// @nodoc
class _$JHAModelCopyWithImpl<$Res, $Val extends JHAModel>
    implements $JHAModelCopyWith<$Res> {
  _$JHAModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? segment = null,
    Object? workPlan = null,
    Object? date = null,
    Object? dayOrNight = null,
    Object? competentPerson = null,
    Object? supervisor = null,
    Object? certifiedPerson = null,
    Object? certifiedFlagger = null,
    Object? task = null,
    Object? isNight = null,
    Object? machineryList = null,
    Object? toolsList = null,
    Object? ppeList = null,
    Object? incidents = null,
    Object? crews = null,
    Object? shades = null,
    Object? water = null,
    Object? paperCups = null,
    Object? trashes = null,
    Object? restrooms = null,
    Object? extinguishers = null,
    Object? gfcis = null,
    Object? workAreaProtection = null,
    Object? firstAidKit = null,
    Object? craneLiftPlan = null,
    Object? machinery = null,
    Object? toolsAndEquipment = null,
    Object? excavations = null,
    Object? scaffolds = null,
    Object? utility = null,
    Object? proximity = null,
    Object? confinedSpace = null,
    Object? hotWork = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      segment: null == segment
          ? _value.segment
          : segment // ignore: cast_nullable_to_non_nullable
              as String,
      workPlan: null == workPlan
          ? _value.workPlan
          : workPlan // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dayOrNight: null == dayOrNight
          ? _value.dayOrNight
          : dayOrNight // ignore: cast_nullable_to_non_nullable
              as String,
      competentPerson: null == competentPerson
          ? _value.competentPerson
          : competentPerson // ignore: cast_nullable_to_non_nullable
              as String,
      supervisor: null == supervisor
          ? _value.supervisor
          : supervisor // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedPerson: null == certifiedPerson
          ? _value.certifiedPerson
          : certifiedPerson // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedFlagger: null == certifiedFlagger
          ? _value.certifiedFlagger
          : certifiedFlagger // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      isNight: null == isNight
          ? _value.isNight
          : isNight // ignore: cast_nullable_to_non_nullable
              as bool,
      machineryList: null == machineryList
          ? _value.machineryList
          : machineryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      toolsList: null == toolsList
          ? _value.toolsList
          : toolsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ppeList: null == ppeList
          ? _value.ppeList
          : ppeList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      incidents: null == incidents
          ? _value.incidents
          : incidents // ignore: cast_nullable_to_non_nullable
              as List<JHAIncidentModel>,
      crews: null == crews
          ? _value.crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<JHACrewModel>,
      shades: null == shades
          ? _value.shades
          : shades // ignore: cast_nullable_to_non_nullable
              as bool,
      water: null == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as bool,
      paperCups: null == paperCups
          ? _value.paperCups
          : paperCups // ignore: cast_nullable_to_non_nullable
              as bool,
      trashes: null == trashes
          ? _value.trashes
          : trashes // ignore: cast_nullable_to_non_nullable
              as bool,
      restrooms: null == restrooms
          ? _value.restrooms
          : restrooms // ignore: cast_nullable_to_non_nullable
              as bool,
      extinguishers: null == extinguishers
          ? _value.extinguishers
          : extinguishers // ignore: cast_nullable_to_non_nullable
              as bool,
      gfcis: null == gfcis
          ? _value.gfcis
          : gfcis // ignore: cast_nullable_to_non_nullable
              as bool,
      workAreaProtection: null == workAreaProtection
          ? _value.workAreaProtection
          : workAreaProtection // ignore: cast_nullable_to_non_nullable
              as bool,
      firstAidKit: null == firstAidKit
          ? _value.firstAidKit
          : firstAidKit // ignore: cast_nullable_to_non_nullable
              as bool,
      craneLiftPlan: null == craneLiftPlan
          ? _value.craneLiftPlan
          : craneLiftPlan // ignore: cast_nullable_to_non_nullable
              as bool,
      machinery: null == machinery
          ? _value.machinery
          : machinery // ignore: cast_nullable_to_non_nullable
              as bool,
      toolsAndEquipment: null == toolsAndEquipment
          ? _value.toolsAndEquipment
          : toolsAndEquipment // ignore: cast_nullable_to_non_nullable
              as bool,
      excavations: null == excavations
          ? _value.excavations
          : excavations // ignore: cast_nullable_to_non_nullable
              as bool,
      scaffolds: null == scaffolds
          ? _value.scaffolds
          : scaffolds // ignore: cast_nullable_to_non_nullable
              as bool,
      utility: null == utility
          ? _value.utility
          : utility // ignore: cast_nullable_to_non_nullable
              as bool,
      proximity: null == proximity
          ? _value.proximity
          : proximity // ignore: cast_nullable_to_non_nullable
              as bool,
      confinedSpace: null == confinedSpace
          ? _value.confinedSpace
          : confinedSpace // ignore: cast_nullable_to_non_nullable
              as bool,
      hotWork: null == hotWork
          ? _value.hotWork
          : hotWork // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JHAModelCopyWith<$Res> implements $JHAModelCopyWith<$Res> {
  factory _$$_JHAModelCopyWith(
          _$_JHAModel value, $Res Function(_$_JHAModel) then) =
      __$$_JHAModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String company,
      @HiveField(2) String segment,
      @HiveField(3) String workPlan,
      @HiveField(4) String date,
      @HiveField(5) String dayOrNight,
      @HiveField(6) String competentPerson,
      @HiveField(7) String supervisor,
      @HiveField(8) String certifiedPerson,
      @HiveField(9) String certifiedFlagger,
      @HiveField(10) String task,
      @HiveField(11) bool isNight,
      @HiveField(12) List<String> machineryList,
      @HiveField(13) List<String> toolsList,
      @HiveField(14) List<String> ppeList,
      @HiveField(15) List<JHAIncidentModel> incidents,
      @HiveField(16) List<JHACrewModel> crews,
      @HiveField(17) bool shades,
      @HiveField(18) bool water,
      @HiveField(19) bool paperCups,
      @HiveField(20) bool trashes,
      @HiveField(21) bool restrooms,
      @HiveField(22) bool extinguishers,
      @HiveField(23) bool gfcis,
      @HiveField(24) bool workAreaProtection,
      @HiveField(25) bool firstAidKit,
      @HiveField(26) bool craneLiftPlan,
      @HiveField(27) bool machinery,
      @HiveField(28) bool toolsAndEquipment,
      @HiveField(29) bool excavations,
      @HiveField(30) bool scaffolds,
      @HiveField(31) bool utility,
      @HiveField(32) bool proximity,
      @HiveField(33) bool confinedSpace,
      @HiveField(34) bool hotWork});
}

/// @nodoc
class __$$_JHAModelCopyWithImpl<$Res>
    extends _$JHAModelCopyWithImpl<$Res, _$_JHAModel>
    implements _$$_JHAModelCopyWith<$Res> {
  __$$_JHAModelCopyWithImpl(
      _$_JHAModel _value, $Res Function(_$_JHAModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? segment = null,
    Object? workPlan = null,
    Object? date = null,
    Object? dayOrNight = null,
    Object? competentPerson = null,
    Object? supervisor = null,
    Object? certifiedPerson = null,
    Object? certifiedFlagger = null,
    Object? task = null,
    Object? isNight = null,
    Object? machineryList = null,
    Object? toolsList = null,
    Object? ppeList = null,
    Object? incidents = null,
    Object? crews = null,
    Object? shades = null,
    Object? water = null,
    Object? paperCups = null,
    Object? trashes = null,
    Object? restrooms = null,
    Object? extinguishers = null,
    Object? gfcis = null,
    Object? workAreaProtection = null,
    Object? firstAidKit = null,
    Object? craneLiftPlan = null,
    Object? machinery = null,
    Object? toolsAndEquipment = null,
    Object? excavations = null,
    Object? scaffolds = null,
    Object? utility = null,
    Object? proximity = null,
    Object? confinedSpace = null,
    Object? hotWork = null,
  }) {
    return _then(_$_JHAModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      segment: null == segment
          ? _value.segment
          : segment // ignore: cast_nullable_to_non_nullable
              as String,
      workPlan: null == workPlan
          ? _value.workPlan
          : workPlan // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dayOrNight: null == dayOrNight
          ? _value.dayOrNight
          : dayOrNight // ignore: cast_nullable_to_non_nullable
              as String,
      competentPerson: null == competentPerson
          ? _value.competentPerson
          : competentPerson // ignore: cast_nullable_to_non_nullable
              as String,
      supervisor: null == supervisor
          ? _value.supervisor
          : supervisor // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedPerson: null == certifiedPerson
          ? _value.certifiedPerson
          : certifiedPerson // ignore: cast_nullable_to_non_nullable
              as String,
      certifiedFlagger: null == certifiedFlagger
          ? _value.certifiedFlagger
          : certifiedFlagger // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      isNight: null == isNight
          ? _value.isNight
          : isNight // ignore: cast_nullable_to_non_nullable
              as bool,
      machineryList: null == machineryList
          ? _value._machineryList
          : machineryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      toolsList: null == toolsList
          ? _value._toolsList
          : toolsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ppeList: null == ppeList
          ? _value._ppeList
          : ppeList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      incidents: null == incidents
          ? _value._incidents
          : incidents // ignore: cast_nullable_to_non_nullable
              as List<JHAIncidentModel>,
      crews: null == crews
          ? _value._crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<JHACrewModel>,
      shades: null == shades
          ? _value.shades
          : shades // ignore: cast_nullable_to_non_nullable
              as bool,
      water: null == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as bool,
      paperCups: null == paperCups
          ? _value.paperCups
          : paperCups // ignore: cast_nullable_to_non_nullable
              as bool,
      trashes: null == trashes
          ? _value.trashes
          : trashes // ignore: cast_nullable_to_non_nullable
              as bool,
      restrooms: null == restrooms
          ? _value.restrooms
          : restrooms // ignore: cast_nullable_to_non_nullable
              as bool,
      extinguishers: null == extinguishers
          ? _value.extinguishers
          : extinguishers // ignore: cast_nullable_to_non_nullable
              as bool,
      gfcis: null == gfcis
          ? _value.gfcis
          : gfcis // ignore: cast_nullable_to_non_nullable
              as bool,
      workAreaProtection: null == workAreaProtection
          ? _value.workAreaProtection
          : workAreaProtection // ignore: cast_nullable_to_non_nullable
              as bool,
      firstAidKit: null == firstAidKit
          ? _value.firstAidKit
          : firstAidKit // ignore: cast_nullable_to_non_nullable
              as bool,
      craneLiftPlan: null == craneLiftPlan
          ? _value.craneLiftPlan
          : craneLiftPlan // ignore: cast_nullable_to_non_nullable
              as bool,
      machinery: null == machinery
          ? _value.machinery
          : machinery // ignore: cast_nullable_to_non_nullable
              as bool,
      toolsAndEquipment: null == toolsAndEquipment
          ? _value.toolsAndEquipment
          : toolsAndEquipment // ignore: cast_nullable_to_non_nullable
              as bool,
      excavations: null == excavations
          ? _value.excavations
          : excavations // ignore: cast_nullable_to_non_nullable
              as bool,
      scaffolds: null == scaffolds
          ? _value.scaffolds
          : scaffolds // ignore: cast_nullable_to_non_nullable
              as bool,
      utility: null == utility
          ? _value.utility
          : utility // ignore: cast_nullable_to_non_nullable
              as bool,
      proximity: null == proximity
          ? _value.proximity
          : proximity // ignore: cast_nullable_to_non_nullable
              as bool,
      confinedSpace: null == confinedSpace
          ? _value.confinedSpace
          : confinedSpace // ignore: cast_nullable_to_non_nullable
              as bool,
      hotWork: null == hotWork
          ? _value.hotWork
          : hotWork // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'JHAModelAdapter')
class _$_JHAModel implements _JHAModel {
  _$_JHAModel(
      {@HiveField(0) this.id = "",
      @HiveField(1) this.company = "",
      @HiveField(2) this.segment = "",
      @HiveField(3) this.workPlan = "",
      @HiveField(4) this.date = "",
      @HiveField(5) this.dayOrNight = "",
      @HiveField(6) this.competentPerson = "",
      @HiveField(7) this.supervisor = "",
      @HiveField(8) this.certifiedPerson = "",
      @HiveField(9) this.certifiedFlagger = "",
      @HiveField(10) this.task = "",
      @HiveField(11) this.isNight = false,
      @HiveField(12) final List<String> machineryList = const [],
      @HiveField(13) final List<String> toolsList = const [],
      @HiveField(14) final List<String> ppeList = const [],
      @HiveField(15) final List<JHAIncidentModel> incidents = const [],
      @HiveField(16) final List<JHACrewModel> crews = const [],
      @HiveField(17) this.shades = false,
      @HiveField(18) this.water = false,
      @HiveField(19) this.paperCups = false,
      @HiveField(20) this.trashes = false,
      @HiveField(21) this.restrooms = false,
      @HiveField(22) this.extinguishers = false,
      @HiveField(23) this.gfcis = false,
      @HiveField(24) this.workAreaProtection = false,
      @HiveField(25) this.firstAidKit = false,
      @HiveField(26) this.craneLiftPlan = false,
      @HiveField(27) this.machinery = false,
      @HiveField(28) this.toolsAndEquipment = false,
      @HiveField(29) this.excavations = false,
      @HiveField(30) this.scaffolds = false,
      @HiveField(31) this.utility = false,
      @HiveField(32) this.proximity = false,
      @HiveField(33) this.confinedSpace = false,
      @HiveField(34) this.hotWork = false})
      : _machineryList = machineryList,
        _toolsList = toolsList,
        _ppeList = ppeList,
        _incidents = incidents,
        _crews = crews;

  factory _$_JHAModel.fromJson(Map<String, dynamic> json) =>
      _$$_JHAModelFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String id;
  @override
  @JsonKey()
  @HiveField(1)
  final String company;
  @override
  @JsonKey()
  @HiveField(2)
  final String segment;
  @override
  @JsonKey()
  @HiveField(3)
  final String workPlan;
  @override
  @JsonKey()
  @HiveField(4)
  final String date;
  @override
  @JsonKey()
  @HiveField(5)
  final String dayOrNight;
  @override
  @JsonKey()
  @HiveField(6)
  final String competentPerson;
  @override
  @JsonKey()
  @HiveField(7)
  final String supervisor;
  @override
  @JsonKey()
  @HiveField(8)
  final String certifiedPerson;
  @override
  @JsonKey()
  @HiveField(9)
  final String certifiedFlagger;
  @override
  @JsonKey()
  @HiveField(10)
  final String task;
  @override
  @JsonKey()
  @HiveField(11)
  final bool isNight;
  final List<String> _machineryList;
  @override
  @JsonKey()
  @HiveField(12)
  List<String> get machineryList {
    if (_machineryList is EqualUnmodifiableListView) return _machineryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_machineryList);
  }

  final List<String> _toolsList;
  @override
  @JsonKey()
  @HiveField(13)
  List<String> get toolsList {
    if (_toolsList is EqualUnmodifiableListView) return _toolsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toolsList);
  }

  final List<String> _ppeList;
  @override
  @JsonKey()
  @HiveField(14)
  List<String> get ppeList {
    if (_ppeList is EqualUnmodifiableListView) return _ppeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ppeList);
  }

  final List<JHAIncidentModel> _incidents;
  @override
  @JsonKey()
  @HiveField(15)
  List<JHAIncidentModel> get incidents {
    if (_incidents is EqualUnmodifiableListView) return _incidents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incidents);
  }

  final List<JHACrewModel> _crews;
  @override
  @JsonKey()
  @HiveField(16)
  List<JHACrewModel> get crews {
    if (_crews is EqualUnmodifiableListView) return _crews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crews);
  }

  @override
  @JsonKey()
  @HiveField(17)
  final bool shades;
  @override
  @JsonKey()
  @HiveField(18)
  final bool water;
  @override
  @JsonKey()
  @HiveField(19)
  final bool paperCups;
  @override
  @JsonKey()
  @HiveField(20)
  final bool trashes;
  @override
  @JsonKey()
  @HiveField(21)
  final bool restrooms;
  @override
  @JsonKey()
  @HiveField(22)
  final bool extinguishers;
  @override
  @JsonKey()
  @HiveField(23)
  final bool gfcis;
  @override
  @JsonKey()
  @HiveField(24)
  final bool workAreaProtection;
  @override
  @JsonKey()
  @HiveField(25)
  final bool firstAidKit;
  @override
  @JsonKey()
  @HiveField(26)
  final bool craneLiftPlan;
  @override
  @JsonKey()
  @HiveField(27)
  final bool machinery;
  @override
  @JsonKey()
  @HiveField(28)
  final bool toolsAndEquipment;
  @override
  @JsonKey()
  @HiveField(29)
  final bool excavations;
  @override
  @JsonKey()
  @HiveField(30)
  final bool scaffolds;
  @override
  @JsonKey()
  @HiveField(31)
  final bool utility;
  @override
  @JsonKey()
  @HiveField(32)
  final bool proximity;
  @override
  @JsonKey()
  @HiveField(33)
  final bool confinedSpace;
  @override
  @JsonKey()
  @HiveField(34)
  final bool hotWork;

  @override
  String toString() {
    return 'JHAModel(id: $id, company: $company, segment: $segment, workPlan: $workPlan, date: $date, dayOrNight: $dayOrNight, competentPerson: $competentPerson, supervisor: $supervisor, certifiedPerson: $certifiedPerson, certifiedFlagger: $certifiedFlagger, task: $task, isNight: $isNight, machineryList: $machineryList, toolsList: $toolsList, ppeList: $ppeList, incidents: $incidents, crews: $crews, shades: $shades, water: $water, paperCups: $paperCups, trashes: $trashes, restrooms: $restrooms, extinguishers: $extinguishers, gfcis: $gfcis, workAreaProtection: $workAreaProtection, firstAidKit: $firstAidKit, craneLiftPlan: $craneLiftPlan, machinery: $machinery, toolsAndEquipment: $toolsAndEquipment, excavations: $excavations, scaffolds: $scaffolds, utility: $utility, proximity: $proximity, confinedSpace: $confinedSpace, hotWork: $hotWork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JHAModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.segment, segment) || other.segment == segment) &&
            (identical(other.workPlan, workPlan) ||
                other.workPlan == workPlan) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOrNight, dayOrNight) ||
                other.dayOrNight == dayOrNight) &&
            (identical(other.competentPerson, competentPerson) ||
                other.competentPerson == competentPerson) &&
            (identical(other.supervisor, supervisor) ||
                other.supervisor == supervisor) &&
            (identical(other.certifiedPerson, certifiedPerson) ||
                other.certifiedPerson == certifiedPerson) &&
            (identical(other.certifiedFlagger, certifiedFlagger) ||
                other.certifiedFlagger == certifiedFlagger) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.isNight, isNight) || other.isNight == isNight) &&
            const DeepCollectionEquality()
                .equals(other._machineryList, _machineryList) &&
            const DeepCollectionEquality()
                .equals(other._toolsList, _toolsList) &&
            const DeepCollectionEquality().equals(other._ppeList, _ppeList) &&
            const DeepCollectionEquality()
                .equals(other._incidents, _incidents) &&
            const DeepCollectionEquality().equals(other._crews, _crews) &&
            (identical(other.shades, shades) || other.shades == shades) &&
            (identical(other.water, water) || other.water == water) &&
            (identical(other.paperCups, paperCups) ||
                other.paperCups == paperCups) &&
            (identical(other.trashes, trashes) || other.trashes == trashes) &&
            (identical(other.restrooms, restrooms) ||
                other.restrooms == restrooms) &&
            (identical(other.extinguishers, extinguishers) ||
                other.extinguishers == extinguishers) &&
            (identical(other.gfcis, gfcis) || other.gfcis == gfcis) &&
            (identical(other.workAreaProtection, workAreaProtection) ||
                other.workAreaProtection == workAreaProtection) &&
            (identical(other.firstAidKit, firstAidKit) ||
                other.firstAidKit == firstAidKit) &&
            (identical(other.craneLiftPlan, craneLiftPlan) ||
                other.craneLiftPlan == craneLiftPlan) &&
            (identical(other.machinery, machinery) ||
                other.machinery == machinery) &&
            (identical(other.toolsAndEquipment, toolsAndEquipment) ||
                other.toolsAndEquipment == toolsAndEquipment) &&
            (identical(other.excavations, excavations) ||
                other.excavations == excavations) &&
            (identical(other.scaffolds, scaffolds) ||
                other.scaffolds == scaffolds) &&
            (identical(other.utility, utility) || other.utility == utility) &&
            (identical(other.proximity, proximity) ||
                other.proximity == proximity) &&
            (identical(other.confinedSpace, confinedSpace) ||
                other.confinedSpace == confinedSpace) &&
            (identical(other.hotWork, hotWork) || other.hotWork == hotWork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        company,
        segment,
        workPlan,
        date,
        dayOrNight,
        competentPerson,
        supervisor,
        certifiedPerson,
        certifiedFlagger,
        task,
        isNight,
        const DeepCollectionEquality().hash(_machineryList),
        const DeepCollectionEquality().hash(_toolsList),
        const DeepCollectionEquality().hash(_ppeList),
        const DeepCollectionEquality().hash(_incidents),
        const DeepCollectionEquality().hash(_crews),
        shades,
        water,
        paperCups,
        trashes,
        restrooms,
        extinguishers,
        gfcis,
        workAreaProtection,
        firstAidKit,
        craneLiftPlan,
        machinery,
        toolsAndEquipment,
        excavations,
        scaffolds,
        utility,
        proximity,
        confinedSpace,
        hotWork
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JHAModelCopyWith<_$_JHAModel> get copyWith =>
      __$$_JHAModelCopyWithImpl<_$_JHAModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JHAModelToJson(
      this,
    );
  }
}

abstract class _JHAModel implements JHAModel {
  factory _JHAModel(
      {@HiveField(0) final String id,
      @HiveField(1) final String company,
      @HiveField(2) final String segment,
      @HiveField(3) final String workPlan,
      @HiveField(4) final String date,
      @HiveField(5) final String dayOrNight,
      @HiveField(6) final String competentPerson,
      @HiveField(7) final String supervisor,
      @HiveField(8) final String certifiedPerson,
      @HiveField(9) final String certifiedFlagger,
      @HiveField(10) final String task,
      @HiveField(11) final bool isNight,
      @HiveField(12) final List<String> machineryList,
      @HiveField(13) final List<String> toolsList,
      @HiveField(14) final List<String> ppeList,
      @HiveField(15) final List<JHAIncidentModel> incidents,
      @HiveField(16) final List<JHACrewModel> crews,
      @HiveField(17) final bool shades,
      @HiveField(18) final bool water,
      @HiveField(19) final bool paperCups,
      @HiveField(20) final bool trashes,
      @HiveField(21) final bool restrooms,
      @HiveField(22) final bool extinguishers,
      @HiveField(23) final bool gfcis,
      @HiveField(24) final bool workAreaProtection,
      @HiveField(25) final bool firstAidKit,
      @HiveField(26) final bool craneLiftPlan,
      @HiveField(27) final bool machinery,
      @HiveField(28) final bool toolsAndEquipment,
      @HiveField(29) final bool excavations,
      @HiveField(30) final bool scaffolds,
      @HiveField(31) final bool utility,
      @HiveField(32) final bool proximity,
      @HiveField(33) final bool confinedSpace,
      @HiveField(34) final bool hotWork}) = _$_JHAModel;

  factory _JHAModel.fromJson(Map<String, dynamic> json) = _$_JHAModel.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get company;
  @override
  @HiveField(2)
  String get segment;
  @override
  @HiveField(3)
  String get workPlan;
  @override
  @HiveField(4)
  String get date;
  @override
  @HiveField(5)
  String get dayOrNight;
  @override
  @HiveField(6)
  String get competentPerson;
  @override
  @HiveField(7)
  String get supervisor;
  @override
  @HiveField(8)
  String get certifiedPerson;
  @override
  @HiveField(9)
  String get certifiedFlagger;
  @override
  @HiveField(10)
  String get task;
  @override
  @HiveField(11)
  bool get isNight;
  @override
  @HiveField(12)
  List<String> get machineryList;
  @override
  @HiveField(13)
  List<String> get toolsList;
  @override
  @HiveField(14)
  List<String> get ppeList;
  @override
  @HiveField(15)
  List<JHAIncidentModel> get incidents;
  @override
  @HiveField(16)
  List<JHACrewModel> get crews;
  @override
  @HiveField(17)
  bool get shades;
  @override
  @HiveField(18)
  bool get water;
  @override
  @HiveField(19)
  bool get paperCups;
  @override
  @HiveField(20)
  bool get trashes;
  @override
  @HiveField(21)
  bool get restrooms;
  @override
  @HiveField(22)
  bool get extinguishers;
  @override
  @HiveField(23)
  bool get gfcis;
  @override
  @HiveField(24)
  bool get workAreaProtection;
  @override
  @HiveField(25)
  bool get firstAidKit;
  @override
  @HiveField(26)
  bool get craneLiftPlan;
  @override
  @HiveField(27)
  bool get machinery;
  @override
  @HiveField(28)
  bool get toolsAndEquipment;
  @override
  @HiveField(29)
  bool get excavations;
  @override
  @HiveField(30)
  bool get scaffolds;
  @override
  @HiveField(31)
  bool get utility;
  @override
  @HiveField(32)
  bool get proximity;
  @override
  @HiveField(33)
  bool get confinedSpace;
  @override
  @HiveField(34)
  bool get hotWork;
  @override
  @JsonKey(ignore: true)
  _$$_JHAModelCopyWith<_$_JHAModel> get copyWith =>
      throw _privateConstructorUsedError;
}
