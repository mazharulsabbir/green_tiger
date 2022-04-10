import 'package:green_tiger/data/model/country/country.dart';

class ShippingAddressValidations {
  static String? firstNameValidate(String? value) {
    if (value == null || value.trim() == '') return 'First name is required';
  }

  static String? lastNameValidate(String? value) {
    if (value == null || value.trim() == '') return 'Last name is required';
  }

  static String? streetAdress1Validate(String? value) {
    if (value == null || value.trim() == '') return 'Address is required';
  }

  static String? streetAdress2Validate(String? value) {
    if (value == null || value.trim() == '')
      return 'Street Address 2 is required';
  }

  static String? cityValidation(String? value) {
    if (value == null || value.trim() == '') return 'Enter your city name';
  }

  static String? stateValidation(String? value) {
    if (value == null || value.trim() == '') return 'Enter state';
  }

  static String? zipCodeValidation(String? value) {
    if (value == null || value.trim() == '') return 'Enter zip code';
  }

  static String? phoneValidation(String? value) {
    if (value == null || value.trim() == '') return 'Enter phone number';
  }

  static String? dropdownValidation(Country? value) {
    if (value == null) return 'Select a country';
  }
}
