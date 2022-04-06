import 'package:get/get.dart';
import 'package:green_tiger/data/model/product/product.dart';
import '../data/remote/home_api.dart';

class ProductController extends GetxController
    with StateMixin<List<ProductModel>> {
  final HomeApi _api = HomeApi();
  static ProductController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
    getCategories();
  }

  Future<void> getCategories() => _api.products().then(
        (response) => change(response, status: RxStatus.success()),
        onError: (err) => change(null, status: RxStatus.error(err)),
      );
}
