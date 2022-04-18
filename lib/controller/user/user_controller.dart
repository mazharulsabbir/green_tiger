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
    getUserProfile();
  }

  Future<void> getUserProfile() async {
    int? _uid = StorageUtils.loggedInUserId();
    if (_uid == null) {
      // change(null, status: RxStatus.error("Unauthorized. Login required!"));
      return;
    }

    _repository.getUserProfileById(_uid).then((user) {
      // todo: cache user info
      if (user == null) {
        change(null, status: RxStatus.error('No user found'));
        return;
      }
      StorageUtils.setUser(user);
      change(user, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error(error));
    });
  }

  void refreshUserProfile() async {
    change(null, status: RxStatus.loading());
    await getUserProfile();
  }

  void logout() {
    _authController.setUserLoggedInStatus(false);
  }
}
