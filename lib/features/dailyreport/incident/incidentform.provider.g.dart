// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incidentform.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getIncidentHash() => r'f62cca252e5a238065461ac7638006a0d5c68096';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GetIncidentRef = AutoDisposeProviderRef<IncidentForm?>;

/// See also [getIncident].
@ProviderFor(getIncident)
const getIncidentProvider = GetIncidentFamily();

/// See also [getIncident].
class GetIncidentFamily extends Family<IncidentForm?> {
  /// See also [getIncident].
  const GetIncidentFamily();

  /// See also [getIncident].
  GetIncidentProvider call({
    IncidentForm? incident,
  }) {
    return GetIncidentProvider(
      incident: incident,
    );
  }

  @override
  GetIncidentProvider getProviderOverride(
    covariant GetIncidentProvider provider,
  ) {
    return call(
      incident: provider.incident,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getIncidentProvider';
}

/// See also [getIncident].
class GetIncidentProvider extends AutoDisposeProvider<IncidentForm?> {
  /// See also [getIncident].
  GetIncidentProvider({
    this.incident,
  }) : super.internal(
          (ref) => getIncident(
            ref,
            incident: incident,
          ),
          from: getIncidentProvider,
          name: r'getIncidentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getIncidentHash,
          dependencies: GetIncidentFamily._dependencies,
          allTransitiveDependencies:
              GetIncidentFamily._allTransitiveDependencies,
        );

  final IncidentForm? incident;

  @override
  bool operator ==(Object other) {
    return other is GetIncidentProvider && other.incident == incident;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, incident.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
