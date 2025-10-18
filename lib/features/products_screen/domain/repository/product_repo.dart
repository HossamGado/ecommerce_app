import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/products_screen/data/model/product_model.dart';

abstract class ProductRepo{
Future<Either<RouteFailures,ProductModel>>getProducts(String catId);
}