import 'package:get/get.dart';
import 'package:green_tiger/data/model/product/product.dart';
import 'package:green_tiger/data/repository/product_repo.dart';

class ProductByCategoryController extends GetxController
    with StateMixin<List<ProductModel>> {
  final ProductRepository _api = ProductRepository();
  static ProductByCategoryController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
    getProductByCategory();
  }

  Future<void> getProductByCategory() => _api.productsByCategory(10).then(
        (response) => change(response, status: RxStatus.success()),
        onError: (err) => change(null, status: RxStatus.error(err)),
      );
}
