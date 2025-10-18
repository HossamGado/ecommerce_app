import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/category_model.dart';
class HomeState {
  RequestState? requestState;
  CategoryModel? categoryModel;
  String? errorMessage;

  HomeState({this.requestState, this.categoryModel, this.errorMessage});

  HomeState copyWith({
    RequestState? requestState,
    CategoryModel? categoryModel,
    String? errorMessage,
  }) {
    return HomeState(
      requestState: requestState ?? this.requestState,
      categoryModel: categoryModel ?? this.categoryModel,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class HomeInit extends HomeState {
  HomeInit()
      : super(
      requestState: RequestState.init, categoryModel: null, errorMessage: "");
}

