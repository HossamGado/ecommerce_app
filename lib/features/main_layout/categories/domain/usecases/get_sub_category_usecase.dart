import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/repository/category_repo.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';
@injectable
class GetSubCategoryUseCase {
  CategoryRepo repository;

  GetSubCategoryUseCase(this.repository);

  Future<Either<RouteFailures, CategoryModel>> call(String catId) =>
      repository.getSubCategories(catId);
}
