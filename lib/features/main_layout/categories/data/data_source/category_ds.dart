import 'package:ecommerce_app/features/main_layout/categories/data/models/category_model.dart';

abstract class CategoryDs {
  Future<CategoryModel>getaCategories();
}