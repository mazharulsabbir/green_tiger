import 'dart:convert';

import 'package:green_tiger/data/repository/auth_repo.dart';
import 'package:green_tiger/screens/splash.dart';

import '/data/local/storage_utils.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final AuthRepository _repository;
  final _isLoggedIn = false.obs;
  final _isLoading = false.obs;

  String? _cookie;

  bool get isUserLoggedIn => _isLoggedIn.value;
  bool get isLoading => _isLoading.value;

  String? get cookie => _cookie;

  static AuthController get to => Get.find();

  AuthController(this._repository) {
    _isLoggedIn.value = StorageUtils.isUserLoggedIn();
    if (_isLoggedIn.value) {
      _cookie = StorageUtils.getCookie();
    }
  }

  void setUserLoggedInStatus(bool status) {
    _isLoggedIn.value = status;
    StorageUtils.isUserLoggedIn(status);
    update();
  }

  void _setLoading(bool state) {
    _isLoading.value = state;
    update();
  }

  Future<dynamic> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance
        .login(); // by default we request the email and the public profile
    // or FacebookAuth.i.login()
    if (result.status == LoginStatus.success) {
      // you are logged
      final AccessToken accessToken = result.accessToken!;
      debugPrint("Logged in. Token: $accessToken");

      setUserLoggedInStatus(true);
      return Future.value(accessToken);
    } else {
      debugPrint("${result.status}");
      debugPrint("${result.message}");
      return Future.error(result);
    }
  }

  Future<dynamic> signInWithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      final _result = await _googleSignIn.signIn();

      setUserLoggedInStatus(true);
      return Future.value(_result);
    } catch (error) {
      print(error);
      return Future.error(error);
    }
  }

  Future<dynamic> loginWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    try {
      _setLoading(true);
      final _cookie = await _repository.login(
        email: email,
        password: password,
      );

      StorageUtils.setCookie(_cookie);
      setUserLoggedInStatus(true);
      return Future.value('Login Successful!');
    } on Exception catch (e) {
      _setLoading(false);
      debugPrint("${e}");
      return Future.error(e.toString());
    } finally {
      _setLoading(false);
    }
  }

  void logout() {
    // todo: logout
  }
}
