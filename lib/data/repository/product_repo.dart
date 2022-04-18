import 'package:flutter/foundation.dart';
import 'package:green_tiger/data/local/storage_utils.dart';
import 'package:green_tiger/data/model/category/category.dart';
import 'package:green_tiger/data/model/product/product.dart';
import '../remote/api_service.dart';

import 'package:dio/dio.dart' as dio;

class ProductRepository {
  final ApiService _apiService;
  ProductRepository(this._apiService);

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
      final response = await _apiService.post(
        '/api/v1/global/get',
        body: _body,
      );

      final _result = response as List<dynamic>;
      debugPrint('Printing categories');
      debugPrint(_result.toString());
      final _response = _result.map((e) => CategoryModel.fromJson(e)).toList();
      return _response;
    } catch (e) {
      return Future.error("$e");
    }
  }

  Future<List<ProductModel>> products() async {
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
              {"id": "create_date", "condition": ">=", "value": _date}
            ]
          },
          "fields": [
            {"name": "id", "type": "int"},
            {"name": "name", "type": "str"},
            {"name": "type", "type": "str"},
            {"name": "website_url", "type": "str"},
            {"name": "description", "type": "str"},
            {"name": "list_price", "type": "float"},
            {"name": "qty_available", "type": "float"},
            {"name": "image_1920", "type": "binary"},
            {"name": "rating_avg", "type": "float"},
            {"name": "rating_count", "type": "float"},
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
                {"name": "list_price", "type": "str"},
                {"name": "image_1920", "type": "binary"},
                {"name": "rating_avg", "type": "float"},
                {"name": "rating_count", "type": "float"}
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

      final _result = response as List<dynamic>;
      final _response = _result.map((e) => ProductModel.fromJson(e)).toList();
      return _response;
    } catch (e) {
      return Future.error("$e");
    }
  }

  Future<List<ProductModel>> productsByCategory(int? categoryId) async {
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
            {"name": "list_price", "type": "float"},
            {"name": "qty_available", "type": "float"},
            {"name": "image_1920", "type": "binary"},
            {"name": "rating_avg", "type": "float"},
            {"name": "rating_count", "type": "float"},
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
                {"name": "list_price", "type": "str"},
                {"name": "image_1920", "type": "binary"},
                {"name": "rating_avg", "type": "float"},
                {"name": "rating_count", "type": "float"}
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

      final _result = response as List<dynamic>;
      final _response = _result.map((e) => ProductModel.fromJson(e)).toList();
      return _response;
    } catch (e) {
      return Future.error("$e");
    }
  }
}
