import 'package:get/get.dart';
import 'package:green_tiger/data/model/category/category.dart';
import 'package:green_tiger/data/repository/product_repo.dart';

class CategoryController extends GetxController
    with StateMixin<List<CategoryModel>> {
  final ProductRepository _api = ProductRepository();
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

  Future<void> refreshHome() async => await getCategories();
}
