import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/checkout_controller.dart';
import 'package:green_tiger/data/model/checkout/address/shipping_address.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:green_tiger/utils/validations/shipping_address_validation.dart';

import '../../../constraints/styles.dart';

class AddressFormWidget extends GetView<CheckoutController> {
  AddressFormWidget({Key? key}) : super(key: key);
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNmaeController = TextEditingController();
  final TextEditingController street1Controller = TextEditingController();
  final TextEditingController street2Controller = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController zipController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment & Shipping Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Country or Region'),
                const SizedBox(height: 10),
                DropdownButtonFormField<Country>(
                  items: List.generate(
                      controller.countries.length,
                      (index) => DropdownMenuItem(
                            child: Text("${controller.countries[index].name}"),
                            value: controller.countries[index],
                          )),
                  onChanged: (value) {
                    debugPrint('$value');
                  },
                ),
                const SizedBox(height: 10),
                const Text('First Name'),
                const SizedBox(height: 10),
                TextFormField(
                  controller: firstNameController,
                  decoration: textInputDecoration,
                  textCapitalization: TextCapitalization.words,
                  initialValue: controller.shippingAddress?.firstName,
                  validator: ShippingAddressValidations.firstNameValidate,
                ),
                const SizedBox(height: 10),
                const Text('Last Name'),
                const SizedBox(height: 10),
                TextFormField(
                  controller: lastNmaeController,
                  decoration: textInputDecoration,
                  textCapitalization: TextCapitalization.words,
                  initialValue: controller.shippingAddress?.lastName,
                  validator: ShippingAddressValidations.lastNameValidate,
                ),
                const SizedBox(height: 10),
                const Text('Street Address'),
                const SizedBox(height: 10),
                TextFormField(
                  controller: street1Controller,
                  decoration: textInputDecoration,
                  textCapitalization: TextCapitalization.words,
                  initialValue: controller.shippingAddress?.streetAddress1,
                  validator: ShippingAddressValidations.streetAdress1Validate,
                ),
                const SizedBox(height: 10),
                const Text('Street Address 2'),
                const SizedBox(height: 10),
                TextFormField(
                  controller: street2Controller,
                  decoration: textInputDecoration,
                  textCapitalization: TextCapitalization.words,
                  initialValue: controller.shippingAddress?.streetAddress2,
                  validator: ShippingAddressValidations.streetAdress2Validate,
                ),
                const SizedBox(height: 10),
                const Text('City'),
                const SizedBox(height: 10),
                TextFormField(
                  controller: cityController,
                  decoration: textInputDecoration,
                  textCapitalization: TextCapitalization.words,
                  initialValue: controller.shippingAddress?.city,
                  validator: ShippingAddressValidations.cityValidation,
                ),
                const SizedBox(height: 10),
                const Text('State/Province/Region'),
                const SizedBox(height: 10),
                TextFormField(
                  controller: stateController,
                  decoration: textInputDecoration,
                  textCapitalization: TextCapitalization.words,
                  initialValue: controller.shippingAddress?.state,
                  validator: ShippingAddressValidations.stateValidation,
                ),
                const SizedBox(height: 10),
                const Text('Zip/Postal Code'),
                const SizedBox(height: 10),
                TextFormField(
                  controller: zipController,
                  decoration: textInputDecoration,
                  keyboardType: TextInputType.number,
                  initialValue: controller.shippingAddress?.zipCode,
                  validator: ShippingAddressValidations.zipCodeValidation,
                ),
                const SizedBox(height: 10),
                const Text('Phone Number'),
                const SizedBox(height: 10),
                TextFormField(
                  controller: phoneController,
                  decoration: textInputDecoration,
                  keyboardType: TextInputType.number,
                  initialValue: controller.shippingAddress?.phone,
                  validator: ShippingAddressValidations.phoneValidation,
                ),
                const SizedBox(height: 10),
                Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () async {
                          if ((_formKey.currentState != null) &&
                              (_formKey.currentState!.validate())) {
                            ShippingAddress shippingAddress = ShippingAddress(
                              lastName: lastNmaeController.text,
                              firstName: firstNameController.text,
                              streetAddress1: street1Controller.text,
                              streetAddress2: street2Controller.text,
                              state: stateController.text,
                              country: 'BD',
                              zipCode: zipController.text,
                              city: cityController.text,
                              phone: phoneController.text,
                            );
                            print(shippingAddress.toJson());
                            // await controller.saveAddress(shippingAddress);
                          }
                        },
                        child: const Text('Save')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
