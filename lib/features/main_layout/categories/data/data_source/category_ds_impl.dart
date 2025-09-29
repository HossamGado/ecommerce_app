import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/core/exceptions/exceptions.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/data_source/category_ds.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/models/category_model.dart';

class CategoryDsImpl implements CategoryDs {
  ApiManager apiManager;
  CategoryDsImpl(this.apiManager);
  @override
  Future<CategoryModel> getaCategories()async{
    try {
      var response=await apiManager.getData(endPoints: EndPoints.category);
      CategoryModel categoryModel=CategoryModel.fromJson(response.data);
      return categoryModel;
      
    } catch (e) {
      throw RouteRemoteException(e.toString());
    }
  }
}
