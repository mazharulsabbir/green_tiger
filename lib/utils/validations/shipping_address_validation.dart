import 'package:green_tiger/data/model/country/country.dart';

class ShippingAddressValidations {
  static String? firstNameValidate(String? value) {
    if (value == null || value.trim() == '') {
      return 'First name is required';
    } else {
      return null;
    }
  }

  static String? lastNameValidate(String? value) {
    if (value == null || value.trim() == '') {
      return 'Last name is required';
    } else {
      return null;
    }
  }

  static String? streetAddress1Validate(String? value) {
    if (value == null || value.trim() == '') {
      return 'Address is required';
    } else {
      return null;
    }
  }

  static String? streetAddress2Validate(String? value) {
    if (value == null || value.trim() == '') {
      return 'Street Address 2 is required';
    } else {
      return null;
    }
  }

  static String? cityValidation(String? value) {
    if (value == null || value.trim() == '') {
      return 'Enter your city name';
    } else {
      return null;
    }
  }

  static String? zipCodeValidation(String? value) {
    if (value == null || value.trim() == '') {
      return 'Enter zip code';
    } else {
      return null;
    }
  }

  static String? phoneValidation(String? value) {
    if (value == null || value.trim() == '') {
      return 'Enter phone number';
    } else {
      return null;
    }
  }

  static String? dropdownValidation(Country? value) {
    if (value == null) {
      return 'Select a country';
    } else {
      return null;
    }
  }

  static String? stateValidation(State? value) {
    if (value == null) {
      return 'Select a state';
    } else {
      return null;
    }
  }
}
