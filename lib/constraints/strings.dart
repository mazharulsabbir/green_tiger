import 'package:green_tiger/data/model/category/category.dart';
import 'package:green_tiger/data/model/product/product.dart';

import 'index.dart';

const String appName = "Green Tiger";
const String dbName = "_green_tiger_db";

const String companyThemeText = 'Your E-Bike\nin one app';
const String agentSignupString = 'Become Our Partner';
const String signupString = 'Sign Up';
const String loginString = 'Log In';

List<CategoryModel> productCategories = const [
  CategoryModel(id: 0, name: 'E-Bike', image: eBikeCategoryImage),
  CategoryModel(id: 1, name: 'E-Cycle', image: eCycleCategoryImage),
  CategoryModel(id: 2, name: 'Li-Battery', image: liBatteryCategoryImage),
  CategoryModel(id: 3, name: 'Spare Parts', image: sparePartsCategoryImage),
];

List<ProductModel> products = [
  ProductModel(
    id: 0,
    price: 75000.0,
    discount: 10.2,
    imageUrl: bikeImage,
    name: 'GT-Vive',
    rating: 3.0,
    ratingCount: 10,
    isFav: false,
  ),
  ProductModel(
    id: 1,
    price: 75000.0,
    discount: 10.2,
    imageUrl: bikeImage,
    name: 'GT-Vive',
    rating: 5.0,
    ratingCount: 10,
    isFav: true,
  ),
  ProductModel(
    id: 2,
    price: 75000.0,
    discount: 10.2,
    imageUrl: bikeImage,
    name: 'GT-Vive',
    rating: 4.5,
    ratingCount: 10,
    isFav: false,
  ),
  ProductModel(
    id: 3,
    price: 75000.0,
    discount: 10.2,
    imageUrl: bikeImage,
    name: 'GT-Vive',
    rating: 5.0,
    ratingCount: 10,
    isFav: false,
  ),
];

List<ProductModel> cycleProducts = [
  ProductModel(
    id: 0,
    price: 75000.0,
    discount: 10.2,
    imageUrl: cycleImage,
    name: 'GT E-bicycle City',
    rating: 5.0,
    ratingCount: 10,
    isFav: false,
  ),
  ProductModel(
    id: 1,
    price: 75000.0,
    discount: 10.2,
    imageUrl: cycleImage,
    name: 'GT E-bicycle City',
    rating: 5.0,
    ratingCount: 10,
    isFav: true,
  ),
  ProductModel(
    id: 2,
    price: 75000.0,
    discount: 10.2,
    imageUrl: cycleImage,
    name: 'GT E-bicycle City',
    rating: 5.0,
    ratingCount: 10,
    isFav: false,
  ),
  ProductModel(
    id: 3,
    price: 75000.0,
    discount: 10.2,
    imageUrl: cycleImage,
    name: 'GT E-bicycle City',
    rating: 5.0,
    ratingCount: 10,
    isFav: false,
  ),
];
