import 'package:green_tiger/controller/auth_controller.dart';
import 'package:green_tiger/data/model/category/category.dart';
import 'package:green_tiger/data/remote/url.dart';
import '/data/model/post/post.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;

class HomeApi extends GetConnect {
  Future<List<Post>> posts() async {
    final response = await get("https://jsonplaceholder.typicode.com/posts");

    if (response.status.hasError) {
      return Future.error("${response.statusText}");
    }

    return (response.body as List<dynamic>)
        .map((e) => Post.fromJson(e))
        .toList();
  }

  Future<List<CategoryModel>> categories() async {
    final _body = {
      "params": {
        "data": {
          "model": "product.public.category",
          "conditions": {
            "relation": [],
            "condition": [
              {"id": "parent_id", "condition": "=", "value": false}
            ]
          },
          "fields": [
            {"name": "id", "type": "int"},
            {"name": "name", "type": "str"},
            {"name": "image_1024", "type": "binary"}
          ]
        }
      }
    };

    try {
      String? cookie = AuthController.to.coockie;
      if (cookie != null) {
        final _url = urlBuilder('api/v1/global/public/get');
        Response response = await post(
          _url,
          _body,
          headers: {
            'Cookie': cookie,
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
        );

        // var data = convert.jsonDecode(response.body);
        print(response.body);
        return (response.body['result'] as List<dynamic>)
            .map((e) => CategoryModel.fromJson(e))
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
