// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/api/api_manager.dart' as _i237;
import 'features/auth/data/data_source/remote/auth_remote_ds.dart' as _i294;
import 'features/auth/data/data_source/remote/auth_remote_ds_impl.dart'
    as _i677;
import 'features/main_layout/categories/data/data_source/category_ds.dart'
    as _i73;
import 'features/main_layout/categories/data/data_source/category_ds_impl.dart'
    as _i46;
import 'features/main_layout/categories/data/repository/category_repo_impl.dart'
    as _i658;
import 'features/main_layout/categories/domain/repository/category_repo.dart'
    as _i374;
import 'features/main_layout/categories/domain/usecases/get_sub_category_usecase.dart'
    as _i92;
import 'features/main_layout/categories/presentation/bloc/category_bloc.dart'
    as _i916;
import 'features/main_layout/home/data/data_source/category_ds.dart' as _i413;
import 'features/main_layout/home/data/data_source/category_ds_impl.dart'
    as _i953;
import 'features/main_layout/home/data/repository/category_repo_impl.dart'
    as _i555;
import 'features/main_layout/home/domain/repository/category_repository.dart'
    as _i96;
import 'features/main_layout/home/domain/usecases/get_category_usecase.dart'
    as _i441;
import 'features/main_layout/home/presentation/bloc/home_bloc.dart' as _i123;
import 'features/products_screen/data/data_source/product_ds.dart' as _i0;
import 'features/products_screen/data/data_source/product_ds_impl.dart'
    as _i1010;
import 'features/products_screen/data/repository/product_repo_impl.dart'
    as _i1006;
import 'features/products_screen/domain/repository/product_repo.dart' as _i500;
import 'features/products_screen/domain/usecases/product_usecase.dart' as _i231;
import 'features/products_screen/presentation/bloc/product_bloc.dart' as _i477;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i237.ApiManager>(() => _i237.ApiManager());
    gh.factory<_i413.CategoryDs>(() => _i953.CategoryDsImpl());
    gh.factory<_i0.ProductDs>(() => _i1010.ProductDsImpl());
    gh.factory<_i73.CategoryDs>(() => _i46.CategoryDsImpl());
    gh.factory<_i96.CategoryRepository>(
      () => _i555.CategoryRepoImpl(gh<_i413.CategoryDs>()),
    );
    gh.factory<_i374.CategoryRepo>(
      () => _i658.CategoryRepoImpl(gh<_i73.CategoryDs>()),
    );
    gh.factory<_i500.ProductRepo>(
      () => _i1006.productRepoImpl(gh<_i0.ProductDs>()),
    );
    gh.factory<_i92.GetSubCategoryUseCase>(
      () => _i92.GetSubCategoryUseCase(gh<_i374.CategoryRepo>()),
    );
    gh.factory<_i294.AuthRemoteDs>(
      () => _i677.AuthRemoteDsImpl(gh<_i237.ApiManager>()),
    );
    gh.factory<_i441.GetCategoryUseCase>(
      () => _i441.GetCategoryUseCase(gh<_i96.CategoryRepository>()),
    );
    gh.factory<_i231.ProductUseCase>(
      () => _i231.ProductUseCase(gh<_i500.ProductRepo>()),
    );
    gh.factory<_i123.HomeBloc>(
      () => _i123.HomeBloc(gh<_i441.GetCategoryUseCase>()),
    );
    gh.factory<_i916.CategoryBloc>(
      () => _i916.CategoryBloc(
        gh<_i441.GetCategoryUseCase>(),
        gh<_i92.GetSubCategoryUseCase>(),
      ),
    );
    gh.factory<_i477.ProductBloc>(
      () => _i477.ProductBloc(gh<_i231.ProductUseCase>()),
    );
    return this;
  }
}
