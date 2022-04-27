import 'package:flutter/foundation.dart';
import 'package:green_tiger/data/model/category/category.dart';
import 'package:green_tiger/data/model/product/product.dart';
import '../remote/api_service.dart';

class ProductRepository {
  final ApiService _apiService;
  ProductRepository(this._apiService);

  Future<List<CategoryModel>?> categories() async {
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
      final response = await _apiService.post(
        '/api/v1/global/get',
        body: _body,
      );

      final _result = response as List<dynamic>?;

      final _response = _result?.map((e) => CategoryModel.fromJson(e)).toList();
      return _response;
    } catch (e) {
      return Future.error("$e");
    }
  }

  Future<List<ProductModel>?> products() async {
    // todo: check latest date
    const _date = "2022-02-25";
    final _body = {
      "params": {
        "data": {
          "model": "product.template",
          "conditions": {
            "relation": ["&"],
            "condition": [
              {"id": "active", "condition": "=", "value": true},
              {
                "id": "alternative_product_ids",
                "condition": "!=",
                "value": false
              }
            ]
          },
          "fields": [
            {"name": "id", "type": "int"},
            {"name": "name", "type": "str"},
            {"name": "type", "type": "str"},
            {"name": "website_url", "type": "str"},
            {"name": "description", "type": "str"},
            {"name": "description_sale", "type": "str"},
            {"name": "list_price", "type": "float"},
            {"name": "qty_available", "type": "float"},
            {"name": "image_1920", "type": "binary"},
            {"name": "rating_avg", "type": "float"},
            {"name": "rating_count", "type": "float"},
            {
              "name": "rating_ids",
              "related_fields": [
                {"name": "consumed", "type": "boolean"},
                {"name": "create_date", "type": "datetime"},
                {"name": "display_name", "type": "char"},
                {"name": "feedback", "type": "text"},
                {"name": "id", "type": "integer"},
                {"name": "rating", "type": "float"},
                {"name": "rating_image", "type": "binary"},
                {"name": "rating_text", "type": "selection"}
              ]
            },
            {"name": "is_product_variant", "type": "boolean"},
            {
              "name": "currency_id",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"}
              ]
            },
            {
              "name": "cost_currency_id",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"}
              ]
            },
            {"name": "cost_method", "type": "selection"},
            {"name": "custom_message", "type": "text"},
            {
              "name": "alternative_product_ids",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"},
                {"name": "description", "type": "str"},
                {"name": "description_sale", "type": "str"},
                {"name": "list_price", "type": "str"},
                {"name": "image_1920", "type": "binary"},
                {"name": "rating_avg", "type": "float"},
                {"name": "rating_count", "type": "float"}
              ]
            },
            {"name": "create_date"},
            {
              "name": "product_template_image_ids",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"},
                {"name": "image_1920", "type": "binary"}
              ]
            },
            {
              "name": "product_variant_ids",
              "related_fields": [
                {"name": "id"},
                {"name": "name"},
                {"name": "stock_state"},
                {"name": "image_1920", "type": "binary"},
                {"name": "rating_avg", "type": "float"},
                {"name": "rating_count", "type": "float"},
                {"name": "list_price", "type": "float"}
              ]
            },
            {
              "name": "attribute_line_ids",
              "related_fields": [
                {
                  "name": "attribute_id",
                  "type": "related",
                  "related_fields": [
                    {"name": "id"},
                    {"name": "name"}
                  ]
                },
                {
                  "name": "value_ids",
                  "type": "related",
                  "related_fields": [
                    {"name": "id"},
                    {"name": "name"},
                    {"name": "html_color"}
                  ]
                }
              ]
            },
            {
              "name": "tab_line_ids",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "integer"},
                {"name": "sequence", "type": "integer"},
                {"name": "tab_content", "type": "html"},
                {"name": "tab_name", "type": "char"}
              ]
            }
          ]
        }
      }
    };

    try {
      final response = await _apiService.post(
        '/api/v1/global/get',
        body: _body,
      );

      final _result = response as List<dynamic>?;
      final _response = _result?.map((e) => ProductModel.fromJson(e)).toList();
      return _response;
    } catch (e) {
      return Future.error("$e");
    }
  }

  Future<List<ProductModel>?> productsByCategory(int? categoryId) async {
    final _body = {
      "params": {
        "data": {
          "model": "product.template",
          "conditions": {
            "relation": ["&"],
            "condition": [
              {"id": "categ_id", "condition": "=", "value": categoryId},
              {"id": "active", "condition": "=", "value": true}
            ]
          },
          "fields": [
            {"name": "id", "type": "int"},
            {"name": "name", "type": "str"},
            {"name": "type", "type": "str"},
            {"name": "website_url", "type": "str"},
            {"name": "description", "type": "str"},
            {"name": "description_sale", "type": "str"},
            {"name": "list_price", "type": "float"},
            {"name": "qty_available", "type": "float"},
            {"name": "image_1920", "type": "binary"},
            {"name": "rating_avg", "type": "float"},
            {"name": "rating_count", "type": "float"},
            {
              "name": "rating_ids",
              "related_fields": [
                {"name": "consumed", "type": "boolean"},
                {"name": "create_date", "type": "datetime"},
                {"name": "display_name", "type": "char"},
                {"name": "feedback", "type": "text"},
                {"name": "id", "type": "integer"},
                {"name": "rating", "type": "float"},
                {"name": "rating_image", "type": "binary"},
                {"name": "rating_text", "type": "selection"}
              ]
            },
            {"name": "is_product_variant", "type": "boolean"},
            {
              "name": "currency_id",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"}
              ]
            },
            {
              "name": "cost_currency_id",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"}
              ]
            },
            {"name": "cost_method", "type": "selection"},
            {"name": "custom_message", "type": "text"},
            {
              "name": "alternative_product_ids",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"},
                {"name": "description", "type": "str"},
                {"name": "description_sale", "type": "str"},
                {"name": "list_price", "type": "str"},
                {"name": "image_1920", "type": "binary"},
                {"name": "rating_avg", "type": "float"},
                {"name": "rating_count", "type": "float"}
              ]
            },
            {"name": "create_date"},
            {
              "name": "product_template_image_ids",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"},
                {"name": "image_1920", "type": "binary"}
              ]
            },
            {
              "name": "product_variant_ids",
              "related_fields": [
                {"name": "id"},
                {"name": "name"},
                {"name": "stock_state"},
                {"name": "image_1920", "type": "binary"},
                {"name": "rating_avg", "type": "float"},
                {"name": "rating_count", "type": "float"},
                {"name": "list_price", "type": "float"}
              ]
            },
            {
              "name": "attribute_line_ids",
              "related_fields": [
                {
                  "name": "attribute_id",
                  "type": "related",
                  "related_fields": [
                    {"name": "id"},
                    {"name": "name"}
                  ]
                },
                {
                  "name": "value_ids",
                  "type": "related",
                  "related_fields": [
                    {"name": "id"},
                    {"name": "name"},
                    {"name": "html_color"}
                  ]
                }
              ]
            },
            {
              "name": "tab_line_ids",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "integer"},
                {"name": "sequence", "type": "integer"},
                {"name": "tab_content", "type": "html"},
                {"name": "tab_name", "type": "char"}
              ]
            }
          ]
        }
      }
    };

    try {
      final response = await _apiService.post(
        '/api/v1/global/get',
        body: _body,
      );

      final _result = response as List<dynamic>?;
      final _response = _result?.map((e) => ProductModel.fromJson(e)).toList();
      return _response;
    } catch (e) {
      return Future.error("$e");
    }
  }
}
