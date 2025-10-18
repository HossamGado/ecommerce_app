import 'package:ecommerce_app/config/routes_manager/routes.dart';
import 'package:ecommerce_app/config/routes_manager/routes_generator.dart';
import 'package:ecommerce_app/core/cache/shared_pref.dart';
import 'package:ecommerce_app/core/utils/simple_bloc_observer.dart';
import 'package:ecommerce_app/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await CacheHelper.init();
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    String? token=CacheHelper.getData<String>("token");
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,
        home: child,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute:token==null? Routes.signInRoute:Routes.mainRoute,
      ),
    );
  }
}
