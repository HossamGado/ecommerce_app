



import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/models/category_model.dart';

class CategoryState {
  RequestState? requestState;
  CategoryModel? categoryModel;
  String? errorMessage;

  CategoryState({this.requestState, this.categoryModel, this.errorMessage});

  CategoryState copyWith({
    RequestState? requestState,
    CategoryModel? categoryModel,
    String? errorMessage,
  }) {
    return CategoryState(
      requestState: requestState ?? this.requestState,
      categoryModel: categoryModel ?? this.categoryModel,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class CategoryInit extends CategoryState {
  CategoryInit()
      : super(
      requestState: RequestState.init, categoryModel: null, errorMessage: "");
}

