import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/products_screen/data/model/product_model.dart';
import 'package:ecommerce_app/features/products_screen/domain/usecases/product_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';
@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductUseCase productUseCase;

  ProductBloc(this.productUseCase) : super(const ProductState.initial()) {
    on<GetProductsEvent>((event, emit)async {
      emit(state.copyWith(getProductsState: RequestState.loading));
      var result=await productUseCase(event.catId);
      result.fold((l){
        emit(state.copyWith(getProductsState:RequestState.failure));
      }, (r){
        emit(state.copyWith(getProductsState:RequestState.success,productModel: r));

      });

    });
  }
}
