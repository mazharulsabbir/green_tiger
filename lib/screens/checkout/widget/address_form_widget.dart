import 'package:flutter/material.dart' hide State;
import 'package:get/get.dart';
import 'package:green_tiger/constraints/colors.dart';
import 'package:green_tiger/controller/user/shipping_address_controller.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:green_tiger/data/model/user/user.dart';
import 'package:green_tiger/utils/common_widgets/common_gap.dart';
import 'package:green_tiger/utils/common_widgets/common_loading.dart';
import 'package:green_tiger/utils/common_widgets/custom_field/my_textfield.dart';
import 'package:green_tiger/utils/validations/shipping_address_validation.dart';
import '../../../constraints/styles.dart';
import '../../../controller/home_controller.dart';

class AddressFormWidget extends GetView<ShippingAddressController> {
  AddressFormWidget({Key? key, this.givenAddress}) : super(key: key);

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController street1Controller = TextEditingController();
  final TextEditingController street2Controller = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController zipController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final ContactAndAddress? givenAddress;

  String? get firstName => givenAddress?.name?.split(' ').first;
  String? get lastName => givenAddress?.name?.split(' ').last;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CommonLoadingOverlay(
        loading: controller.isLoading,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Add Address',
              style: TextStyle(color: Colors.black),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: HomeController.to.removeLastWidget,
            ),
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Country or Region',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  DropdownButtonFormField<Country>(
                    validator: ShippingAddressValidations.dropdownValidation,
                    value: controller.countries.isEmpty ||
                            controller.country.name == null
                        ? null
                        : controller.country,
                    decoration: nonFieldInputDecoration,
                    isExpanded: true,
                    isDense: true,
                    items: List.generate(
                        controller.countries.length,
                        (index) => DropdownMenuItem(
                              child: Text(
                                "${controller.countries[index].name}",
                                overflow: TextOverflow.fade,
                              ),
                              value: controller.countries[index],
                            )),
                    onChanged: controller.setCountry,
                  ),
                  const Gap(),
                  Text(
                    'First Name',
                    style: formTitleTextStyle,
                  ),
                  const Gap(),
                  CustomNonFilledField(
                    controller: firstNameController..text = firstName ?? '',
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.firstNameValidate,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Last Name',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  CustomNonFilledField(
                    controller: lastNameController..text = lastName ?? '',
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.lastNameValidate,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Street Address',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  CustomNonFilledField(
                    controller: street1Controller
                      ..text = givenAddress?.street ?? '',
                    textCapitalization: TextCapitalization.words,
                    validator:
                        ShippingAddressValidations.streetAddress1Validate,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Street Address 2',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  CustomNonFilledField(
                    controller: street2Controller,
                    textCapitalization: TextCapitalization.words,
                    validator:
                        ShippingAddressValidations.streetAddress2Validate,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'City',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  CustomNonFilledField(
                    controller: cityController
                      ..text = controller.defaultAddress?.city ?? '',
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.cityValidation,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'State/Province/Region',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  DropdownButtonFormField<State>(
                    // validator: ShippingAddressValidations.stateValidation,
                    value:
                        controller.state.name == null ? null : controller.state,
                    decoration: nonFieldInputDecoration,
                    isExpanded: true,
                    isDense: true,
                    items: List.generate(
                        controller.states.length,
                        (index) => DropdownMenuItem(
                              child: Text(
                                "${controller.states[index].name}",
                                overflow: TextOverflow.fade,
                              ),
                              value: controller.states[index],
                            )),
                    onChanged: controller.setState,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Zip',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  CustomNonFilledField(
                    controller: zipController
                      ..text = controller.defaultAddress?.zip ?? '',
                    inputType: TextInputType.number,
                    validator: ShippingAddressValidations.zipCodeValidation,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Phone Number',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  CustomNonFilledField(
                    controller: phoneController
                      ..text = controller.defaultAddress?.phone ?? '',
                    inputType: TextInputType.number,
                    validator: ShippingAddressValidations.phoneValidation,
                  ),
                  const Gap(
                    times: 2,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(
                            double.infinity,
                            50,
                          ),
                          primary: primaryColor),
                      onPressed: () async {
                        if (_formKey.currentState != null &&
                            (_formKey.currentState!.validate())) {
                          ContactAndAddress _address = ContactAndAddress(
                            name: firstNameController.text +
                                " " +
                                lastNameController.text,
                            street: street1Controller.text +
                                "," +
                                street2Controller.text,
                            state: State(name: stateController.text),
                            country: controller.country,
                            zip: zipController.text,
                            city: cityController.text,
                            phone: phoneController.text,
                          );
                          // print(shippingAddress.toJson());
                          await controller.saveSingleAddress(_address);
                          HomeController.to.removeLastWidget();
                        }
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
