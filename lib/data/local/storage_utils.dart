import '/constraints/strings.dart';
import 'package:get_storage/get_storage.dart';

final _box = GetStorage(dbName);

class StorageUtils {
  static bool isUserLoggedIn([bool? status]) {
    if (status != null) {
      _box.write('_is_logged_in', status);
    }

    return _box.read<bool>('_is_logged_in') ?? false;
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
}
