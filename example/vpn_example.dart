import 'package:vpn/vpn.dart';

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

void main() async {
  var dummy = Dummy();
  final connected = await dummy.connect();
  print('Connected: $connected');
}
