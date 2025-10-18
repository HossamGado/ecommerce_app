import 'package:ecommerce_app/features/products_screen/data/model/product_model.dart';

abstract class ProductDs{
  Future<ProductModel>getProducts(String catId);

}