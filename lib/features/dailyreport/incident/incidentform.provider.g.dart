// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incidentform.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$getIncidentHash() => r'f62cca252e5a238065461ac7638006a0d5c68096';

/// See also [getIncident].
class GetIncidentProvider extends AutoDisposeProvider<IncidentForm?> {
  GetIncidentProvider({
    this.incident,
  }) : super(
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

typedef GetIncidentRef = AutoDisposeProviderRef<IncidentForm?>;

/// See also [getIncident].
final getIncidentProvider = GetIncidentFamily();

class GetIncidentFamily extends Family<IncidentForm?> {
  GetIncidentFamily();

  GetIncidentProvider call({
    IncidentForm? incident,
  }) {
    return GetIncidentProvider(
      incident: incident,
    );
  }

  @override
  AutoDisposeProvider<IncidentForm?> getProviderOverride(
    covariant GetIncidentProvider provider,
  ) {
    return call(
      incident: provider.incident,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getIncidentProvider';
}
