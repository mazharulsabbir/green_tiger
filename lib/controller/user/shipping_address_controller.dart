import 'package:green_tiger/controller/user/contact_address_controller.dart';
import 'package:green_tiger/data/model/checkout/address/shipping_address.dart';
import 'package:green_tiger/data/model/user/user.dart';
import 'package:green_tiger/data/repository/address_repo.dart';
import 'package:green_tiger/data/local/address_storage.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:green_tiger/utils/snack_bars/snack_bars.dart';

class ShippingAddressController extends GetxController {
  final AddressRepository _repository;
  ShippingAddressController(this._repository);

  static ShippingAddressController get to => Get.find();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final Rx<Country> _country = const Country().obs;
  Country get country => _country.value;

  final Rx<State> _state = const State().obs;
  State get state => _state.value;

  final RxList<State> _states = <State>[].obs;
  List<State> get states => _states;
  set states(List<State> value) => _states.value = value;

  final RxList<Country> _countries = <Country>[].obs;
  List<Country> get countries => _countries;
  set countries(List<Country> value) => _countries.value = value;

  final RxList<ContactAndAddress> _address = <ContactAndAddress>[].obs;
  List<ContactAndAddress> get shippingAddress => _address;
  set shippingAddress(List<ContactAndAddress> value) => _address.value = value;

  final _defaultAddress = (const ContactAndAddress()).obs;
  ContactAndAddress? get defaultAddress =>
      _defaultAddress.value.name == null ? null : _defaultAddress.value;

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
      print(countries);
      update();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> getAddress() async {
    try {
      List<ContactAndAddress> address = AddressStorage.getAvailableAddresses();

      if (address.isEmpty) return;
      _address.value = address;

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

  Future<void> saveAddresses(List<ContactAndAddress> shippingAddress) async {
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

  Future<void> saveSingleAddress(ContactAndAddress _address) async {
    try {
      List<ContactAndAddress> _addresses =
          AddressStorage.getAvailableAddresses();
      _addresses.add(_address);
      await AddressStorage.setAddresses(_addresses);
      await ContactAndAddressController.to.getUserContactAndAddress();
    } catch (_e) {
      MySnackBar.error(_e.toString());
    }
  }

  Future<void> saveDefaultAddress(ContactAndAddress? _contactAndAddress) async {
    if (_contactAndAddress == null) return;
    try {
      await AddressStorage.setDefaultAddress(_contactAndAddress);
    } catch (_e) {
      MySnackBar.error(_e.toString());
    }
    var _address = getDefaultAddress();
    if (_address != null) {
      _defaultAddress.value = _address;
      update();
    }
  }

  ContactAndAddress? getDefaultAddress() => AddressStorage.getDefaultAddress();

  void clearAddress() {
    AddressStorage.removeAvailableAddresses();
    _address.value = [];
    _defaultAddress.value = const ContactAndAddress();
    update();
  }

  setCountry(Country? value) {
    if (value != null && value != _country.value) {
      _state.value = const State();
      _states.value = value.states ?? [];
    }
    _country.value = value ?? const Country();

    update();
  }

  setState(State? value) {
    _state.value = value ?? const State();
  }
}
