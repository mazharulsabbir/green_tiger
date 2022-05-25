import 'package:green_tiger/data/model/user/user.dart';
import '/constraints/strings.dart';
import 'package:get_storage/get_storage.dart';

final _box = GetStorage(dbName);

class AddressStorage {
  ///Storage keys
  static const String _shippingAddressKey = '_shipping_addresses';
  static const String _defaultAddressKey = '_defaultShippingAddress';

  static List<ContactAndAddress> getAvailableAddresses() {
    final _rawAddresses = _box.read(_shippingAddressKey) as List?;
    List<ContactAndAddress> _addresses = [];
    if (_rawAddresses != null && _rawAddresses.isNotEmpty) {
      for (final i in _rawAddresses) {
        _addresses.add(ContactAndAddress.fromJson(i));
      }
    }

    return _addresses;
  }

  static Future<void> setAddresses(
      List<ContactAndAddress> _givenAddress) async {
    List<dynamic> _addresses = [];
    for (final i in _givenAddress) {
      _addresses.add(i.toJson());
    }
    await _box.write(_shippingAddressKey, _addresses);
  }

  static Future<void> setDefaultAddress(ContactAndAddress _address) =>
      _box.write(_defaultAddressKey, _address.toJson());

  // static Future<void> setDefaultAddress(ShippingAddress shippingAddress) async {
  //   var _availableAddress = getAvailableAddresses();
  //   if (_availableAddress.isEmpty) {
  //     setAddresses([shippingAddress]);
  //     return;
  //   }
  //   ShippingAddress _cachedDefaultAddress =
  //       _availableAddress.where((element) => element.isDefault == true).first;
  //   _availableAddress.remove(_cachedDefaultAddress);
  //   _availableAddress.add(shippingAddress);
  //   List<dynamic> _addresses = [];
  //   for (final i in _availableAddress) {
  //     _addresses.add(i.toJson());
  //   }
  //   await _box.write(_shippingAddressKey, _addresses);
  // }

  static ContactAndAddress? getDefaultAddress() {
    var _rawDefaultAddress = _box.read(_defaultAddressKey);

    return ContactAndAddress.fromJson(_rawDefaultAddress);
  }

  static void removeAvailableAddresses() {
    _box.remove('_shipping_addresses');
  }
}
