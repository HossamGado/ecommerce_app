import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/models/category_model.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/repository/category_repository.dart';

class GetCategoryUseCase{
  CategoryRepository repository;

  GetCategoryUseCase(this.repository);

  Future<Either<RouteFailures,CategoryModel>>call()=>repository.getCategory();


}