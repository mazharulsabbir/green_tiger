import 'package:get/get.dart';
import '../data/model/post/post.dart';

class HomeController extends GetxController with StateMixin<List<Post>> {
  final _index = 0.obs;
  int get currentIndex => _index.value;

  void setCurrentIndex(int index) {
    _index.value = index;
    update();
  }
}
