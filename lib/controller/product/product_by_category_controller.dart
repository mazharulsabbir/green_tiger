import 'package:get/get.dart';
import 'package:green_tiger/data/model/product/product.dart';
import 'package:green_tiger/data/repository/product_repo.dart';

import '../../data/model/category/category.dart';

class ProductByCategoryController extends GetxController
    with StateMixin<List<ProductModel>> {
  final ProductRepository _repository;
  ProductByCategoryController(this._repository);

  static ProductByCategoryController get to => Get.find();
  CategoryModel? _category;
  CategoryModel? get category => _category;

  Future<void> getProductByCategory(
    CategoryModel category,
  ) async {
    _category = category;
    change(null, status: RxStatus.loading());
    await _repository.productsByCategory(category.id).then(
          (response) => change(
            response,
            status: response.isEmpty ? RxStatus.empty() : RxStatus.success(),
          ),
          onError: (err) => change(null, status: RxStatus.error(err)),
        );
  }
}
