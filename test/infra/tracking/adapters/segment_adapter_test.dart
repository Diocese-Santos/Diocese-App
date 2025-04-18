import 'package:diocese_santos/infra/tracking/adapters/segment_adapter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:segment_analytics/event.dart';

import '../../../mocks/fakers.dart';
import '../mocks/tracking_client_spy.dart';

void main() {
  late TrackingClientSpy client;
  late SegmentAdapter sut;

  setUp(() {
    client = TrackingClientSpy();
    sut = SegmentAdapter(client: client);
  });

  test('should call identifyUser with correct parameters', () {
    final userId = anyString();
    final userProperties = UserTraits(
      address: Address(
        city: anyString(),
        country: anyString(),
        street: anyString(),
        postalCode: anyString(),
        state: anyString(),
      ),
      company: Company(
        industry: anyString(),
        name: anyString(),
        employeeCount: anyInt(),
        id: anyString(),
        plan: anyString(),
      ),
      age: anyInt(),
      avatar: anyString(),
      birthday: anyString(),
      createdAt: anyString(),
      description: anyString(),
      email: anyString(),
      firstName: anyString(),
      gender: anyString(),
      id: anyString(),
      lastName: anyString(),
      name: anyString(),
      phone: anyString(),
      title: anyString(),
      username: anyString(),
      website: anyString(),
    );

    sut.identifyUser(userId, userProperties);

    expect(client.userId, userId);
    expect(client.userTraits, userProperties);
    expect(client.identifyCallsCount, 1);
  });

  test(
      'should return an error if user properties is different from an instance of UserTraits',
      () {
    final userId = anyString();
    final userProperties = anyString();

    expect(
      () => sut.identifyUser(userId, userProperties),
      throwsA(isA<ArgumentError>()),
    );
  });

  test('should call trackEvent with correct parameters', () {
    final eventName = anyString();
    final eventProperties = {
      'key1': anyString(),
      'key2': anyString(),
    };

    sut.trackEvent(eventName, eventProperties);

    expect(client.event, eventName);
    expect(client.properties, eventProperties);
    expect(client.trackCallsCount, 1);
  });
}
