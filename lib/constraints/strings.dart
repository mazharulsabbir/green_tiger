import 'package:green_tiger/data/model/category/category.dart';

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
