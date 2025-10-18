// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent()';
}


}

/// @nodoc
class $CategoryEventCopyWith<$Res>  {
$CategoryEventCopyWith(CategoryEvent _, $Res Function(CategoryEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryEvent].
extension CategoryEventPatterns on CategoryEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( GetCategoriesEvent value)?  getCategories,TResult Function( GetSubCategoriesEvent value)?  geSubCategories,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case GetCategoriesEvent() when getCategories != null:
return getCategories(_that);case GetSubCategoriesEvent() when geSubCategories != null:
return geSubCategories(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( GetCategoriesEvent value)  getCategories,required TResult Function( GetSubCategoriesEvent value)  geSubCategories,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case GetCategoriesEvent():
return getCategories(_that);case GetSubCategoriesEvent():
return geSubCategories(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( GetCategoriesEvent value)?  getCategories,TResult? Function( GetSubCategoriesEvent value)?  geSubCategories,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case GetCategoriesEvent() when getCategories != null:
return getCategories(_that);case GetSubCategoriesEvent() when geSubCategories != null:
return geSubCategories(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getCategories,TResult Function( String catId)?  geSubCategories,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case GetCategoriesEvent() when getCategories != null:
return getCategories();case GetSubCategoriesEvent() when geSubCategories != null:
return geSubCategories(_that.catId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getCategories,required TResult Function( String catId)  geSubCategories,}) {final _that = this;
switch (_that) {
case _Started():
return started();case GetCategoriesEvent():
return getCategories();case GetSubCategoriesEvent():
return geSubCategories(_that.catId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getCategories,TResult? Function( String catId)?  geSubCategories,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case GetCategoriesEvent() when getCategories != null:
return getCategories();case GetSubCategoriesEvent() when geSubCategories != null:
return geSubCategories(_that.catId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CategoryEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent.started()';
}


}




/// @nodoc


class GetCategoriesEvent implements CategoryEvent {
  const GetCategoriesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCategoriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryEvent.getCategories()';
}


}




/// @nodoc


class GetSubCategoriesEvent implements CategoryEvent {
  const GetSubCategoriesEvent(this.catId);
  

 final  String catId;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSubCategoriesEventCopyWith<GetSubCategoriesEvent> get copyWith => _$GetSubCategoriesEventCopyWithImpl<GetSubCategoriesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSubCategoriesEvent&&(identical(other.catId, catId) || other.catId == catId));
}


@override
int get hashCode => Object.hash(runtimeType,catId);

@override
String toString() {
  return 'CategoryEvent.geSubCategories(catId: $catId)';
}


}

/// @nodoc
abstract mixin class $GetSubCategoriesEventCopyWith<$Res> implements $CategoryEventCopyWith<$Res> {
  factory $GetSubCategoriesEventCopyWith(GetSubCategoriesEvent value, $Res Function(GetSubCategoriesEvent) _then) = _$GetSubCategoriesEventCopyWithImpl;
@useResult
$Res call({
 String catId
});




}
/// @nodoc
class _$GetSubCategoriesEventCopyWithImpl<$Res>
    implements $GetSubCategoriesEventCopyWith<$Res> {
  _$GetSubCategoriesEventCopyWithImpl(this._self, this._then);

  final GetSubCategoriesEvent _self;
  final $Res Function(GetSubCategoriesEvent) _then;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? catId = null,}) {
  return _then(GetSubCategoriesEvent(
null == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CategoryState {

 RequestState get getCategoriesState; RequestState get getSubCategoriesState; CategoryModel? get categoryModel; CategoryModel? get subCategoryModel; String? get errorMessage;
/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateCopyWith<CategoryState> get copyWith => _$CategoryStateCopyWithImpl<CategoryState>(this as CategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryState&&(identical(other.getCategoriesState, getCategoriesState) || other.getCategoriesState == getCategoriesState)&&(identical(other.getSubCategoriesState, getSubCategoriesState) || other.getSubCategoriesState == getSubCategoriesState)&&(identical(other.categoryModel, categoryModel) || other.categoryModel == categoryModel)&&(identical(other.subCategoryModel, subCategoryModel) || other.subCategoryModel == subCategoryModel)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,getCategoriesState,getSubCategoriesState,categoryModel,subCategoryModel,errorMessage);

@override
String toString() {
  return 'CategoryState(getCategoriesState: $getCategoriesState, getSubCategoriesState: $getSubCategoriesState, categoryModel: $categoryModel, subCategoryModel: $subCategoryModel, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CategoryStateCopyWith<$Res>  {
  factory $CategoryStateCopyWith(CategoryState value, $Res Function(CategoryState) _then) = _$CategoryStateCopyWithImpl;
@useResult
$Res call({
 RequestState getCategoriesState, RequestState getSubCategoriesState, CategoryModel? categoryModel, CategoryModel? subCategoryModel, String? errorMessage
});




}
/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._self, this._then);

  final CategoryState _self;
  final $Res Function(CategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? getCategoriesState = null,Object? getSubCategoriesState = null,Object? categoryModel = freezed,Object? subCategoryModel = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
getCategoriesState: null == getCategoriesState ? _self.getCategoriesState : getCategoriesState // ignore: cast_nullable_to_non_nullable
as RequestState,getSubCategoriesState: null == getSubCategoriesState ? _self.getSubCategoriesState : getSubCategoriesState // ignore: cast_nullable_to_non_nullable
as RequestState,categoryModel: freezed == categoryModel ? _self.categoryModel : categoryModel // ignore: cast_nullable_to_non_nullable
as CategoryModel?,subCategoryModel: freezed == subCategoryModel ? _self.subCategoryModel : subCategoryModel // ignore: cast_nullable_to_non_nullable
as CategoryModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryState].
extension CategoryStatePatterns on CategoryState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RequestState getCategoriesState,  RequestState getSubCategoriesState,  CategoryModel? categoryModel,  CategoryModel? subCategoryModel,  String? errorMessage)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.getCategoriesState,_that.getSubCategoriesState,_that.categoryModel,_that.subCategoryModel,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RequestState getCategoriesState,  RequestState getSubCategoriesState,  CategoryModel? categoryModel,  CategoryModel? subCategoryModel,  String? errorMessage)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.getCategoriesState,_that.getSubCategoriesState,_that.categoryModel,_that.subCategoryModel,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RequestState getCategoriesState,  RequestState getSubCategoriesState,  CategoryModel? categoryModel,  CategoryModel? subCategoryModel,  String? errorMessage)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.getCategoriesState,_that.getSubCategoriesState,_that.categoryModel,_that.subCategoryModel,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CategoryState {
  const _Initial({this.getCategoriesState = RequestState.init, this.getSubCategoriesState = RequestState.init, this.categoryModel, this.subCategoryModel, this.errorMessage});
  

@override@JsonKey() final  RequestState getCategoriesState;
@override@JsonKey() final  RequestState getSubCategoriesState;
@override final  CategoryModel? categoryModel;
@override final  CategoryModel? subCategoryModel;
@override final  String? errorMessage;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.getCategoriesState, getCategoriesState) || other.getCategoriesState == getCategoriesState)&&(identical(other.getSubCategoriesState, getSubCategoriesState) || other.getSubCategoriesState == getSubCategoriesState)&&(identical(other.categoryModel, categoryModel) || other.categoryModel == categoryModel)&&(identical(other.subCategoryModel, subCategoryModel) || other.subCategoryModel == subCategoryModel)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,getCategoriesState,getSubCategoriesState,categoryModel,subCategoryModel,errorMessage);

@override
String toString() {
  return 'CategoryState.initial(getCategoriesState: $getCategoriesState, getSubCategoriesState: $getSubCategoriesState, categoryModel: $categoryModel, subCategoryModel: $subCategoryModel, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 RequestState getCategoriesState, RequestState getSubCategoriesState, CategoryModel? categoryModel, CategoryModel? subCategoryModel, String? errorMessage
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? getCategoriesState = null,Object? getSubCategoriesState = null,Object? categoryModel = freezed,Object? subCategoryModel = freezed,Object? errorMessage = freezed,}) {
  return _then(_Initial(
getCategoriesState: null == getCategoriesState ? _self.getCategoriesState : getCategoriesState // ignore: cast_nullable_to_non_nullable
as RequestState,getSubCategoriesState: null == getSubCategoriesState ? _self.getSubCategoriesState : getSubCategoriesState // ignore: cast_nullable_to_non_nullable
as RequestState,categoryModel: freezed == categoryModel ? _self.categoryModel : categoryModel // ignore: cast_nullable_to_non_nullable
as CategoryModel?,subCategoryModel: freezed == subCategoryModel ? _self.subCategoryModel : subCategoryModel // ignore: cast_nullable_to_non_nullable
as CategoryModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
