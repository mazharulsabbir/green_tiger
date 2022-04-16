import 'package:get/get.dart';
import 'package:green_tiger/controller/auth_controller.dart';
import 'package:green_tiger/data/local/storage_utils.dart';
import 'package:green_tiger/data/model/user/user.dart';
import 'package:green_tiger/data/repository/user_repo.dart';

class UserController extends GetxController with StateMixin<UserModel> {
  final AuthController _authController;
  final UserRepository _repository;
  UserController(this._authController, this._repository);

  @override
  void onInit() {
    super.onInit();
    _getUserProfile();
  }

  Future<void> _getUserProfile() async {
    int? _uid = StorageUtils.loggedInUserId();
    if (_uid == null) return;

    _repository.getUserProfileById(_uid).then((user) {
      change(user, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error(error));
    });
  }

  void refreshUserProfile() async {
    change(null, status: RxStatus.loading());
    await _getUserProfile();
  }

  void logout() {
    _authController.setUserLoggedInStatus(false);
  }
}
