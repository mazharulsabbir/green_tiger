import 'package:flutter_test/flutter_test.dart';
import 'package:green_tiger/controller/auth_controller.dart';
import 'package:green_tiger/data/remote/api_service.dart';
import 'package:green_tiger/data/repository/auth_repo.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart' as tail;

class MockAuthRepo extends tail.Mock implements AuthRepository {
  final ApiService apiService;
  MockAuthRepo(this.apiService);
  @override
  Future<dynamic> login({
    required String email,
    required String password,
  }) async {
    final _body = {
      "params": {"db": "gt-dev-feb27", "login": email, "password": password}
    };

    try {
      final response = await apiService.login(
        '/web/session/authenticate',
        body: _body,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
      );
      return response;
    } catch (e) {
      print('Error cought');
      print(e.toString());
      return Future.error("$e");
    }
  }
}

void main() {
  late ApiService apiService;
  late AuthRepository mockAuthRepo;
  late AuthController authController;
  setUp(() {
    apiService = ApiService();
    mockAuthRepo = MockAuthRepo(apiService);
    authController = AuthController(mockAuthRepo);
  });
  test('Test Auth controller', () async {
    expect(authController.isLoading, false);
    expect(
        await authController.loginWithEmailAndPass(
            email: 'aistiak6@gmail.com', password: '011'),
        throwsA(isA<Future>()));
    expect(authController.isLoading, false);
    expect(
        await authController.loginWithEmailAndPass(
            email: 'aistiak6@gmail.com', password: '1'),
        'Login Successful!');
    expect(authController.isLoading, false);
  });
}
