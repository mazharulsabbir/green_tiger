import 'package:green_tiger/data/model/checkout/address/shipping_address.dart';
import 'package:green_tiger/data/repository/address_repo.dart';
import 'package:green_tiger/data/local/address_storage.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ShippingAddressController extends GetxController {
  final AddressRepository _repository;
  ShippingAddressController(this._repository);

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final Rx<Country> _country = const Country().obs;
  Country get country => _country.value;

  final RxList<Country> _countries = <Country>[].obs;
  List<Country> get countries => _countries;
  set countries(List<Country> value) => _countries.value = value;

  final RxList<ShippingAddress> _address = <ShippingAddress>[].obs;
  List<ShippingAddress> get shippingAddress => _address;
  set shippingAddress(List<ShippingAddress> value) => _address.value = value;

  final _defaultAddress = (const ShippingAddress()).obs;
  ShippingAddress? get defaultAddress =>
      _defaultAddress.value.firstName == null ? null : _defaultAddress.value;

  final _selectedCountry = const Country().obs;
  Country get selectedCountry => _selectedCountry.value;
  set selectedCountry(Country value) => _selectedCountry.value = value;

  @override
  void onInit() async {
    super.onInit();
    _isLoading.value = true;
    update();
    await getCountries();
    await getAddress();
    _isLoading.value = false;
    update();
  }

  Future<void> getCountries() async {
    try {
      List<Country> countries = await _repository.countries();
      _countries.value = countries;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> getAddress() async {
    try {
      List<ShippingAddress> address = AddressStorage.getAvailableAddresses();
      if (address.isEmpty) return;
      _address.value = address;
      if (_address.isNotEmpty) {
        _defaultAddress.value =
            address.where((element) => element.isDefault).first;
        update();
      }
      if (_address.first.country == null) {
        _country.value = const Country();
        return;
      }
      Country country = countries
          .where((element) => element.name == address.first.country)
          .first;
      _country.value = country;

      update();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> saveAddress(List<ShippingAddress> shippingAddress) async {
    _isLoading.value = true;
    update();
    await AddressStorage.setAddresses(shippingAddress).catchError((e) {
      _isLoading.value = false;
      update();
    }).then((_) {
      _address.value = shippingAddress;
      _isLoading.value = false;
      update();
    });
  }

  Future<void> saveDefaultAddress(ShippingAddress? shippingAddress) async {
    _isLoading.value = true;
    update();
    await AddressStorage.setDefaultAddress(shippingAddress!).catchError((e) {
      _isLoading.value = false;
      update();
    }).then((_) {
      _defaultAddress.value = shippingAddress;
      _isLoading.value = false;
      update();
    });
  }

  void clearAddress() {
    AddressStorage.removeAvailableAddresses();
    _address.value = [];
    _defaultAddress.value = const ShippingAddress();
    update();
  }

  setCountry(Country? value) => _country.value = value ?? const Country();
}
