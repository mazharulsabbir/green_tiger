import 'dart:convert';

import 'package:green_tiger/data/remote/auth_api.dart';

import '/data/local/storage_utils.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final _isLoggedIn = false.obs;
  final _isLoading = false.obs;

  bool get isUserLoggedIn => _isLoggedIn.value;
  bool get isLoading => _isLoading.value;

  AuthController() {
    _isLoggedIn.value = StorageUtils.isUserLoggedIn();
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

  Future<dynamic> loginWithEmailAndPass(
      {required String email, required String password}) async {
    try {
      _setLoading(true);
      final response =
          await AuthApiServices.login(email: email, password: password);
      _setLoading(false);
      if (response != null) {
        final data = jsonDecode(response.body);
        return Future.value(data);
      } else {
        return Future.error('No responce');
      }
    } catch (e) {
      _setLoading(false);
      return Future.error(e.toString());
    } finally {
      _setLoading(false);
    }
  }
}
