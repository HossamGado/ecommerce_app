import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/usecases/get_category_usecase.dart';
import 'package:ecommerce_app/features/main_layout/categories/presentation/bloc/category_state.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  GetCategoryUseCase getCategoryUseCase;

  CategoryBloc(this.getCategoryUseCase) : super(CategoryInit()) {
    on<GetCategoryEvent>((event, emit) async {
      var result = await getCategoryUseCase();
      result.fold(
        (l) {
          emit(
            state.copyWith(
              requestState: RequestState.failure,
              errorMessage: l.message,
            ),
          );
        },
        ((r) {
          emit(state.copyWith(requestState: RequestState.success,categoryModel: r));
        }),
      );
    });
  }
}
