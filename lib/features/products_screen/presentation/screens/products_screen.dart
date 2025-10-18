import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:ecommerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/di.dart';
import 'package:ecommerce_app/features/products_screen/presentation/bloc/product_bloc.dart';
import 'package:ecommerce_app/features/products_screen/presentation/screens/widgets/custom_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProductsScreen extends StatelessWidget {
  String? catId;
   ProductsScreen({required this.catId,super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
  create: (context) => getIt<ProductBloc>()..add(GetProductsEvent(catId??"")),
  child: BlocConsumer<ProductBloc, ProductState>(
  listener: (context, state) {
  },
  builder: (context, state) {
    return Scaffold(
      appBar: const CustomAppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: state.productModel?.data?.length??0,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 7 / 10,
                ),
                itemBuilder: (context, index) {
                  return CustomProductWidget(
                    image: state.productModel?.data?[index].images?.first??"",
                    title: state.productModel?.data?[index].title??"",
                    price: state.productModel?.data?[index].price?.toDouble()??0,
                    rating: state.productModel?.data?[index].price?.toDouble()??0,
                    discountPercentage: 10,
                    height: height,
                    width: width,
                    description:
                    state.productModel?.data?[index].description??"",
                  );
                },
                scrollDirection: Axis.vertical,
              ),
            )
          ],
        ),
      ),
    );
  },
),
);
  }
}