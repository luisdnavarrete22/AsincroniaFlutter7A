import 'dart:math';

class MockApi {
  static final MockApi _mockapi = MockApi._internal();

  factory MockApi() {
    return _mockapi;
  }

  MockApi._internal();

  Future<int> _getInteger(int delayInSeconds) {
    return Future.delayed(
      Duration(seconds: delayInSeconds),
      () => 1 + Random().nextInt(100),
    );
  }

  /// Método público que obtiene un número entero aleatorio del 1 al 100 muy rápido,
  /// porque utiliza un coche Ferrari.
  Future<int> getFerrariInteger() {
    return _getInteger(1);
  }

  /// Método público que obtiene un número entero aleatorio del 1 al 100 no tan rápido,
  /// porque utiliza un modesto coche Hyundai.
  Future<int> getHyundaiInteger() {
    return _getInteger(3);
  }

  /// Método público que obtiene un número entero aleatorio del 1 al 100 bastante lento,
  /// porque utiliza un coche de juguete Fisher Price.
  Future<int> getFisherPriceInteger() {
    return _getInteger(10);
  }
}
