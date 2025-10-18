part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.started() = _Started;
  const factory CategoryEvent.getCategories() = GetCategoriesEvent;
  const factory CategoryEvent.geSubCategories(String catId) = GetSubCategoriesEvent;
}
