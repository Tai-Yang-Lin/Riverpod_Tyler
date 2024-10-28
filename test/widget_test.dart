import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_tyler/providers/launch_provider.dart';

void main() {
  test('Launch Provider fetches SpaceX launches', () async {
    final container = ProviderContainer();
    final launches = await container.read(launchProvider.future);

    expect(launches.isNotEmpty, true);
  });
}
