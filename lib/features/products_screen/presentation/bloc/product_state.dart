part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.initial({
    @Default(RequestState.init) RequestState getProductsState,
    ProductModel? productModel

}) = _Initial;

}
