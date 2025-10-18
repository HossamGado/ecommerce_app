import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/di.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

import 'category_ds.dart';

@Injectable(as: CategoryDs)
class CategoryDsImpl implements CategoryDs {
  @override
  Future<CategoryModel> getSubCategories(String catId) async {
    var response = await getIt<ApiManager>().getData(
      endPoints: "${EndPoints.category}/$catId/subcategories",
    );
    CategoryModel subCatModel = CategoryModel.fromJson(response.data);
    return subCatModel;
  }
}
