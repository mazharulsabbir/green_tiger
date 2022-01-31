import 'package:green_tiger/data/model/cart/cart.dart';
import 'package:green_tiger/data/model/order/order.dart';

import '/constraints/index.dart';
import '/data/model/category/category.dart';
import '/data/model/product/product.dart';

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

List<CartModel> cartProducts = [
  CartModel(
    name: 'GT E-bicycle City',
    description: 'GT E-bicycle City',
    price: '75000.0',
    total: '10.2',
    imageUrl: cycleImage,
    quantity: '1',
  ),
  CartModel(
    name: 'GT E-bicycle City',
    description: 'GT E-bicycle City',
    price: '75000.0',
    total: '10.2',
    imageUrl: cycleImage,
    quantity: '1',
  ),
  CartModel(
    name: 'GT E-bicycle City',
    description: 'GT E-bicycle City',
    price: '75000.0',
    total: '10.2',
    imageUrl: cycleImage,
    quantity: '1',
  ),
];

List<Order> orderList = const [
  Order(
    id: 1,
    orderNumber: 'LQNSU346JK',
    date: '12/12/2020',
    quantity: 2,
    status: 'Pending',
    price: '75000.0',
  ),
  Order(
    id: 1,
    orderNumber: 'LQNSU346JK',
    date: '12/12/2020',
    quantity: 2,
    status: 'Pending',
    price: '75000.0',
  ),
];
