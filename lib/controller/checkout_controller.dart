import 'package:get/get.dart';
import 'package:green_tiger/data/local/address_storage.dart';
import 'package:green_tiger/data/model/checkout/address/shipping_address.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:green_tiger/data/remote/country_api.dart';

class CheckoutController extends GetxController {
  static CheckoutController get to => Get.find();
  final CountryApi _api = CountryApi();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final _countries = <Country>[].obs;
  List<Country> get countries => _countries;
  set countries(List<Country> value) => _countries.value = value;

  final Rx<ShippingAddress?> _address = null.obs;
  ShippingAddress? get shippingAddress => _address.value;
  set shippingAddress(ShippingAddress? value) => _address.value = value;

  final _selectedCountry = const Country().obs;
  Country get selectedCountry => _selectedCountry.value;
  set selectedCountry(Country value) => _selectedCountry.value = value;

  @override
  void onInit() async {
    super.onInit();
    _isLoading.value = true;
    update();
    await getCountries();
    getAdress();
    _isLoading.value = false;
    update();
  }

  Future<void> getCountries() async {
    List<Country> countries = await _api.countries();
    _countries.value = countries;
  }

  void getAdress() async {
    _address.value = AddressStorage.getAvailableAddresses();
    update();
  }

  Future<void> saveAddress(ShippingAddress shippingAddress) async {
    await AddressStorage.setAddress(shippingAddress).catchError((e) {
      print(e.toString());
    }).then((_) {
      _address.value = shippingAddress;
      update();
    });
  }
}
