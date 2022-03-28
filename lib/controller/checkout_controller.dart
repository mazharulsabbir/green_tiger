import 'package:get/get.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:green_tiger/data/remote/country_api.dart';

class CheckoutController extends GetxController with StateMixin<List<Country>> {
  static CheckoutController get to => Get.find();
  final CountryApi _api = CountryApi();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final _countries = <Country>[].obs;
  List<Country> get countries => _countries;
  set countries(List<Country> value) => _countries.value = value;

  final _selectedCountry = const Country().obs;
  Country get selectedCountry => _selectedCountry.value;
  set selectedCountry(Country value) => _selectedCountry.value = value;

  @override
  void onInit() {
    super.onInit();
    getCountries();
  }

  void getCountries() => _api.countries().then(
        (response) => countries = response,
        onError: (err) => change(null, status: RxStatus.error(err)),
      );
}
