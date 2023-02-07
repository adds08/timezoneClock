import 'package:LSTime/features/dailyreport/jha/incident.provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'incident.dart';

part 'incidentform.provider.g.dart';

@riverpod
IncidentForm? getIncident(Ref ref, {IncidentForm? incident}) {
  return ref.watch(incidentProviderProvider.notifier).getIncident(incident);
}
