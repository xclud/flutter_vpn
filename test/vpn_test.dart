import 'package:vpn/vpn.dart';
import 'package:test/test.dart';

class Dummy extends NetworkInterface {
  const Dummy();

  @override
  Future<bool> connect() {
    return Future.value(true);
  }

  @override
  Stream<int> get deviceToNetwork => throw UnimplementedError();

  @override
  Stream<int> get networkToDevice => throw UnimplementedError();
}

void main() {
  const dummy = Dummy();
  test('Connection Test', () async {
    final connected = await dummy.connect();
    expect(connected, isTrue);
  });
}
