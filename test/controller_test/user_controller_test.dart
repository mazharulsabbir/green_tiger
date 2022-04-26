// import 'package:flutter_test/flutter_test.dart';
// import 'package:get/get.dart';
// import 'package:green_tiger/controller/auth_controller.dart';
// import 'package:green_tiger/controller/user/user_controller.dart';
// import 'package:green_tiger/data/model/country/country.dart';
// import 'package:green_tiger/data/model/user/user.dart';
// import 'package:green_tiger/data/remote/api_service.dart';
// import 'package:green_tiger/data/repository/user_repo.dart';
// import 'package:mocktail/mocktail.dart';

// import 'auth_controller_test.dart';

// class MockUserRepo extends Mock implements UserRepository {
//   @override
//   Future<List<ContactAndAddress>?> getUserContactAndAddressById(int uid) {
//     return Future.delayed(const Duration(seconds: 2))
//         .then((value) => <ContactAndAddress>[
//               const ContactAndAddress(
//                 id: 0001,
//                 name: 'Istiak Ahmed',
//                 email: 'aistiak6@gmail.com',
//                 mobile: '01302143102',
//                 zip: '21',
//                 state: State(id: 01, name: 'Bangladesh', code: 'BD'),
//                 city: 'Dinajpur',
//                 street: 'Dhaka1',
//               )
//             ]);
//   }

//   @override
//   Future<UserModel?> getUserProfileById(int uid) {
//     return Future.delayed(const Duration(seconds: 1)).then((value) =>
//         const UserModel(
//             id: 1212,
//             isDealer: true,
//             email: 'aistiak6@gmail.com',
//             phone: '01302143101',
//             type: 'Ghost'));
//   }
// }

// void main() {
//   late UserController userController;
//   late MockUserRepo fakeRepo;
//   late ApiService apiService;

//   setUp(() {
//     apiService = ApiService();
//     fakeRepo = MockUserRepo();
//     Get.put(AuthController(MockAuthRepo(apiService)));
//     userController = Get.put(UserController(fakeRepo));
//   });
//   test('Testing user controller', () async {
//     expect(userController.state, null);
//     await userController.getUserProfile();
//     expect(userController.status, userController.state?.name == null);
//   });
// }
