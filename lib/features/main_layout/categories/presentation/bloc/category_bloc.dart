import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/usecases/get_sub_category_usecase.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/usecases/get_category_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_event.dart';

part 'category_state.dart';

part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  GetCategoryUseCase getCategoryUseCase;
  GetSubCategoryUseCase getSubCategoryUseCase;

  CategoryBloc(this.getCategoryUseCase,this.getSubCategoryUseCase) : super(const CategoryState.initial()) {
    on<GetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getCategoriesState: RequestState.loading));
      var result = await getCategoryUseCase();
      result.fold((l) {
        emit(state.copyWith(getCategoriesState: RequestState.failure));
      }, (r) {
        add(GetSubCategoriesEvent(r.data?.first.sId??""));
        emit(state.copyWith(getCategoriesState: RequestState.success,categoryModel: r));

      });
    });
    on<GetSubCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getSubCategoriesState: RequestState.loading));
      var result = await getSubCategoryUseCase(event.catId);
      result.fold((l) {
        emit(state.copyWith(getSubCategoriesState: RequestState.failure));
      }, (r) {
        emit(state.copyWith(getSubCategoriesState: RequestState.success,subCategoryModel: r));

      });
    });
  }
}
