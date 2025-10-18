import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/products_screen/data/data_source/product_ds.dart';
import 'package:ecommerce_app/features/products_screen/data/model/product_model.dart';
import 'package:ecommerce_app/features/products_screen/domain/repository/product_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepo)
class productRepoImpl implements ProductRepo {
  ProductDs productDs;

  productRepoImpl(this.productDs);

  @override
  Future<Either<RouteFailures, ProductModel>> getProducts(String catId) async {
    try {
      var data = await productDs.getProducts(catId);
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
