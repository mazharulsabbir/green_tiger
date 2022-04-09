import '../model/checkout/address/shipping_address.dart';
import '/constraints/strings.dart';
import 'package:get_storage/get_storage.dart';

final _box = GetStorage(dbName);

class AddressStorage {
  static ShippingAddress? getAvailableAddresses() {
    final _addresses = _box.read('_shipping_addresses');
    ShippingAddress? _address;
    if (_addresses != null) {
      _address = ShippingAddress.fromJson(_addresses);
    }

    return _address;
  }

  static Future<void> setAddress(ShippingAddress shippingAddress) async {
    dynamic rawData = shippingAddress.toJson();
    await _box.write('_shipping_addresses', rawData);
  }

  static void removeAvailableAddresses() {
    _box.remove('_shipping_addresses');
  }
}
