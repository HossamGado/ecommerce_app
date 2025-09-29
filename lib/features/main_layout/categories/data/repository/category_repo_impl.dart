import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/data_source/category_ds.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/models/category_model.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/repository/category_repository.dart';

class CategoryRepoImpl implements CategoryRepository {
  CategoryDs categoryDs;

  CategoryRepoImpl(this.categoryDs);

  @override
  Future<Either<RouteFailures, CategoryModel>> getCategory() async {
    try {
      var data = await categoryDs.getaCategories();
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
