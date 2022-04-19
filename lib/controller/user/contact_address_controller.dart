import 'package:get/get.dart';
import 'package:green_tiger/controller/auth_controller.dart';
import 'package:green_tiger/data/local/storage_utils.dart';
import 'package:green_tiger/data/model/user/user.dart';
import 'package:green_tiger/data/repository/user_repo.dart';

class ContactAndAddressController extends GetxController
    with StateMixin<List<ContactAndAddress>> {
  final AuthController _authController;
  final UserRepository _repository;
  ContactAndAddressController(this._authController, this._repository);

  @override
  void onInit() {
    super.onInit();
    getUserContactAndAddress();
  }

  Future<void> getUserContactAndAddress() async {
    int? _uid = StorageUtils.loggedInUserId();
    if (_uid == null) {
      change(null, status: RxStatus.error("Unauthorized. Login required!"));
      logout();
      return;
    }

    _repository.getUserContactAndAddressById(_uid).then((address) {
      if (address == null || address.isEmpty) {
        change(null, status: RxStatus.error('No address found'));
        return;
      }
      change(address, status: RxStatus.success());
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
