import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/usecases/get_category_usecase.dart';
import 'package:ecommerce_app/features/main_layout/home/presentation/bloc/home_state.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoryUseCase getCategoryUseCase;

  HomeBloc(this.getCategoryUseCase) : super(HomeInit()) {
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
