import 'package:flutter_test/flutter_test.dart';
import 'package:green_tiger/controller/user/user_controller.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:green_tiger/data/model/user/user.dart';
import 'package:green_tiger/data/repository/user_repo.dart';
import 'package:mocktail/mocktail.dart';

class MockUserRepo extends Mock implements UserRepository {
  @override
  Future<List<ContactAndAddress>?> getUserContactAndAddressById(int uid) {
    return Future.delayed(const Duration(seconds: 2))
        .then((value) => <ContactAndAddress>[
              const ContactAndAddress(
                id: 0001,
                name: 'Istiak Ahmed',
                email: 'aistiak6@gmail.com',
                mobile: '01302143102',
                zip: '21',
                state: State(id: 01, name: 'Bangladesh', code: 'BD'),
                city: 'Dinajpur',
                street: 'Dhaka1',
              )
            ]);
  }

  @override
  Future<UserModel?> getUserProfileById(int uid) {
    return Future.delayed(const Duration(seconds: 1)).then((value) =>
        const UserModel(
            id: 1212,
            isDealer: true,
            email: 'aistiak6@gmail.com',
            phone: '01302143101',
            type: 'Ghost'));
  }
}

void main() {
  late UserController userController;
  late MockUserRepo fakeRepo;
  setUp(() {
    fakeRepo = MockUserRepo();
    userController = UserController(fakeRepo);
  });
}
