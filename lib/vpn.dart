/// Virtual Private Network abstractions for Dart and Flutter.
library vpn;

/// Virtual Network Interface.
abstract class NetworkInterface {
  /// Constructor.
  const NetworkInterface();

  /// Network-to-Device Stream.
  Stream<int> get networkToDevice;

  /// Device-to-Network Stream.
  Stream<int> get deviceToNetwork;

  /// Request connection.
  Future<bool> connect();
}
