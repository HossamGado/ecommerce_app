import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/di.dart';
import 'package:ecommerce_app/features/products_screen/data/data_source/product_ds.dart';
import 'package:ecommerce_app/features/products_screen/data/model/product_model.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:ProductDs )
class ProductDsImpl implements ProductDs{
  @override
  Future<ProductModel> getProducts(String catId)async {

    var response=await getIt<ApiManager>().getData(endPoints:EndPoints.products,param:{
      "category[in]":catId
    } );
    ProductModel productModel =ProductModel.fromJson(response.data);
    return productModel;
  }

}