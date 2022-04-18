import 'package:green_tiger/data/model/user/user.dart';

import '/constraints/strings.dart';
import 'package:get_storage/get_storage.dart';

final _box = GetStorage(dbName);

class StorageUtils {
  static bool isUserLoggedIn([bool? status]) {
    return getCookie() != null;
  }

  static void removeLoginStatus() {
    _box.remove('_is_logged_in');
    _box.remove('logged_in_user_id');
    _box.remove('cookie');
  }

  static String? getCookie() => _box.read<String?>('cookie');

  static void setCookie(String? rawCookie) {
    _box.write('cookie', rawCookie);
  }

  static int? loggedInUserId() => _box.read<int>('logged_in_user_id');
  static void setLoggedInUserId(int? id) {
    _box.write('logged_in_user_id', id);
  }

  static Future<UserModel?> getUser() async {
    var _rawUser = await _box.read('user');
    if (_rawUser == null) return null;
    return UserModel.fromJson(_rawUser);
  }

  static Future<void> setUser(UserModel userModel) async {
    await _box.write('user', userModel.toJson());
  }
}
