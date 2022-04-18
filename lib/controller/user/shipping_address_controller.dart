import 'package:get/get.dart';
import 'package:green_tiger/data/local/address_storage.dart';
import 'package:green_tiger/data/model/checkout/address/shipping_address.dart';
import 'package:green_tiger/data/model/country/country.dart';

import '../../data/repository/address_repo.dart';

class ShippingAddressController extends GetxController {
  final AddressRepository _repository;
  ShippingAddressController(this._repository);

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final Rx<Country> _country = const Country().obs;
  Country get country => _country.value;

  final _countries = <Country>[].obs;
  List<Country> get countries => _countries;
  set countries(List<Country> value) => _countries.value = value;

  final Rx<ShippingAddress> _address = const ShippingAddress().obs;
  ShippingAddress get shippingAddress => _address.value;
  set shippingAddress(ShippingAddress value) => _address.value = value;

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
    List<Country> countries = await _repository.countries();
    _countries.value = countries;
  }

  Future<void> getAddress() async {
    ShippingAddress? address = AddressStorage.getAvailableAddresses();
    if (address == null) return;
    _address.value = address;
    if (_address.value.country == null) {
      _country.value = const Country();
      return;
    }

    Country country = countries
        .where((element) => element.name == _address.value.country)
        .first;
    _country.value = country;
    print('Getting address ${_address.value} and country ${_country.value}');
    update();
  }

  Future<void> saveAddress(ShippingAddress shippingAddress) async {
    _isLoading.value = true;
    update();
    await AddressStorage.setAddress(shippingAddress).catchError((e) {
      _isLoading.value = false;
      update();
      print(e.toString());
    }).then((_) {
      _address.value = shippingAddress;
      _isLoading.value = false;
      update();
    });
  }

  void clearAddress() {
    AddressStorage.removeAvailableAddresses();
    _address.value = const ShippingAddress();
    update();
  }

  setCountry(Country? value) => _country.value = value ?? const Country();
}
