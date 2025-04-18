import 'package:segment_analytics/analytics.dart';
import 'package:segment_analytics/event.dart';
import 'package:segment_analytics/flush_policies/flush_policy.dart';
import 'package:segment_analytics/plugin.dart';
import 'package:segment_analytics/state.dart';
import 'package:segment_analytics/utils/http_client.dart';
import 'package:segment_analytics/utils/store/store.dart';

final class TrackingClientSpy implements Analytics {
  late String? userId;
  late UserTraits? userTraits;
  int identifyCallsCount = 0;

  late String? event;
  late Map<String, dynamic>? properties;
  int trackCallsCount = 0;

  @override
  late HTTPClient httpClient;

  @override
  Future identify({String? userId, UserTraits? userTraits}) async {
    this.userId = userId;
    this.userTraits = userTraits;
    identifyCallsCount++;
  }

  @override
  Future track(String event, {Map<String, dynamic>? properties}) async {
    this.event = event;
    this.properties = properties;
    trackCallsCount++;
  }

  @override
  void addFlushPolicy(List<FlushPolicy> policies) {}

  @override
  void addPlugin(Plugin plugin, {Map<String, dynamic>? settings}) {}

  @override
  Future alias(String newUserId) {
    throw UnimplementedError();
  }

  @override
  Future<void> cleanup() {
    throw UnimplementedError();
  }

  @override
  void error(Exception exception) {}

  @override
  Future flush() {
    throw UnimplementedError();
  }

  @override
  List<FlushPolicy> getFlushPolicies() {
    throw UnimplementedError();
  }

  @override
  List<Plugin> getPlugins(PluginType? ofType) {
    throw UnimplementedError();
  }

  @override
  Future group(String groupId, {GroupTraits? groupTraits}) {
    throw UnimplementedError();
  }

  @override
  Future init() {
    throw UnimplementedError();
  }

  @override
  void Function() onContextLoaded(
      void Function(ContextUpdateType p1) callback) {
    throw UnimplementedError();
  }

  @override
  void Function() onPluginLoaded(void Function(Plugin p1) callback) {
    throw UnimplementedError();
  }

  @override
  void removeFlushPolicy(List<FlushPolicy> policies) {}

  @override
  void removePlugin(Plugin plugin) {}

  @override
  Future reset({bool? resetAnonymousId = true}) {
    throw UnimplementedError();
  }

  @override
  Future screen(String name, {Map<String, dynamic>? properties}) {
    throw UnimplementedError();
  }

  @override
  StateManager get state => throw UnimplementedError();

  @override
  Store get store => throw UnimplementedError();
}
