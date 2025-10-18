import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/core/exceptions/exceptions.dart';
import 'package:ecommerce_app/di.dart';
import 'package:ecommerce_app/features/main_layout/home/data/data_source/category_ds.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:CategoryDs)
class CategoryDsImpl implements CategoryDs {

  @override
  Future<CategoryModel> getaCategories()async{
    try {
      var response=await getIt<ApiManager>().getData(endPoints: EndPoints.category);
      CategoryModel categoryModel=CategoryModel.fromJson(response.data);
      return categoryModel;
      
    } catch (e) {
      throw RouteRemoteException(e.toString());
    }
  }
}
