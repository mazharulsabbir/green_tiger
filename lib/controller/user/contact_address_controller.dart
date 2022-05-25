import 'package:get/get.dart';
import 'package:green_tiger/controller/auth_controller.dart';
import 'package:green_tiger/controller/user/shipping_address_controller.dart';
import 'package:green_tiger/data/local/storage_utils.dart';
import 'package:green_tiger/data/model/user/user.dart';
import 'package:green_tiger/data/repository/user_repo.dart';

class ContactAndAddressController extends GetxController
    with StateMixin<List<ContactAndAddress>> {
  final AuthController _authController;
  final UserRepository _repository;
  ContactAndAddressController(this._authController, this._repository);

  static ContactAndAddressController get to => Get.find();
  @override
  void onInit() async {
    super.onInit();
    var _ad = await getUserContactAndAddress();
    if (_ad != null && _ad.isNotEmpty) {
      await ShippingAddressController.to.saveAddresses(_ad);
    }
  }

  Future<List<ContactAndAddress>?> getUserContactAndAddress() async {
    int? _uid = StorageUtils.loggedInUserId();
    if (_uid == null) {
      change(null, status: RxStatus.error("Unauthorized. Login required!"));
      logout();
      return null;
    }

    _repository.getUserContactAndAddressById(_uid).then((address) async {
      if (address == null || address.isEmpty) {
        change(null, status: RxStatus.error('No address found'));
        return null;
      }

      change(address, status: RxStatus.success());
      return address;
    }).catchError((error) {
      change(null, status: RxStatus.error("Error: $error"));
    });
  }

  void refreshUserContactAndAddress() async {
    change(null, status: RxStatus.loading());
    await getUserContactAndAddress();
  }

  void logout() {
    _authController.logout();
  }
}
