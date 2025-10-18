import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/data_source/category_ds.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/repository/category_repo.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CategoryRepo)
class CategoryRepoImpl implements CategoryRepo {
  CategoryDs categoryDs;

  CategoryRepoImpl(this.categoryDs);

  @override
  Future<Either<RouteFailures, CategoryModel>> getSubCategories(
    String catId,
  ) async {
    try {
      var data = await categoryDs.getSubCategories(catId);
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
