import '../model/checkout/address/shipping_address.dart';
import '/constraints/strings.dart';
import 'package:get_storage/get_storage.dart';

final _box = GetStorage(dbName);

class AddressStorage {
  static List<ShippingAddress> getAvailableAddresses() {
    final _rawAddresses = _box.read('_shipping_addresses') as List?;
    List<ShippingAddress> _addresses = [];
    if (_rawAddresses != null && _rawAddresses.isNotEmpty) {
      for (final i in _rawAddresses) {
        _addresses.add(ShippingAddress.fromJson(i));
      }
    }

    return _addresses;
  }

  static Future<void> setAddresses(
      List<ShippingAddress> shippingAddresses) async {
    List<dynamic> _addresses = [];
    for (final i in shippingAddresses) {
      _addresses.add(i.toJson());
    }
    await _box.write('_shipping_addresses', _addresses);
  }

  static Future<void> setDefaultAddress(ShippingAddress shippingAddress) async {
    var availableAdress = getAvailableAddresses();
    if (availableAdress.isEmpty) {
      setAddresses([shippingAddress]);
      return;
    }
    ShippingAddress _cachedDefaultAddress =
        availableAdress.where((element) => element.isDefault == true).first;
    availableAdress.remove(_cachedDefaultAddress);
    availableAdress.add(shippingAddress);
    List<dynamic> _addresses = [];
    for (final i in availableAdress) {
      _addresses.add(i.toJson());
    }
    await _box.write('_shipping_addresses', _addresses);
  }

  static void removeAvailableAddresses() {
    _box.remove('_shipping_addresses');
  }
}
