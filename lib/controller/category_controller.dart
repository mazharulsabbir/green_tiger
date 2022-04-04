import 'package:get/get.dart';
import 'package:green_tiger/data/model/category/category.dart';
import '../data/remote/home_api.dart';

class CategoryController extends GetxController
    with StateMixin<List<CategoryModel>> {
  final HomeApi _api = HomeApi();
  static CategoryController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
    getCategories();
  }

  Future<void> getCategories() => _api.categories().then(
        (response) => change(response, status: RxStatus.success()),
        onError: (err) => change(null, status: RxStatus.error(err)),
      );
}
