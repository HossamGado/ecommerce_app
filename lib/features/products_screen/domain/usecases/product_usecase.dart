import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/products_screen/data/model/product_model.dart';
import 'package:ecommerce_app/features/products_screen/domain/repository/product_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class ProductUseCase{
  ProductRepo repository;
  ProductUseCase(this.repository);

  Future<Either<RouteFailures,ProductModel>>call(String catId)=>repository.getProducts(catId);
}