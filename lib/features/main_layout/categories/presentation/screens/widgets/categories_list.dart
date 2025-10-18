import 'package:ecommerce_app/core/utils/color_manager.dart';
import 'package:ecommerce_app/core/utils/values_manager.dart';
import 'package:ecommerce_app/features/main_layout/categories/presentation/bloc/category_bloc.dart';
import 'package:ecommerce_app/features/main_layout/categories/presentation/screens/widgets/category_item.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesList extends StatefulWidget {
  CategoryModel? categoryModel;

  CategoriesList({required this.categoryModel, super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.containerGray,
          border: Border(
            top: BorderSide(
              width: AppSize.s2,
              color: ColorManager.primary.withOpacity(0.3),
            ),
            left: BorderSide(
              width: AppSize.s2,
              color: ColorManager.primary.withOpacity(0.3),
            ),
            bottom: BorderSide(
              width: AppSize.s2,
              color: ColorManager.primary.withOpacity(0.3),
            ),
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AppSize.s12),
            bottomLeft: Radius.circular(AppSize.s12),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AppSize.s12),
            bottomLeft: Radius.circular(AppSize.s12),
          ),
          child: ListView.builder(
            itemCount: widget.categoryModel?.data?.length ?? 0,
            itemBuilder: (context, index) => CategoryItem(
              index,
              widget.categoryModel?.data?[index].name ?? "",
              selectedIndex == index,
              onItemClick,
            ),
          ),
        ),
      ),
    );
  }

  onItemClick(int index) {
    setState(() {
      selectedIndex = index;
      BlocProvider.of<CategoryBloc>(context).add(
        GetSubCategoriesEvent(widget.categoryModel?.data?[index].sId ?? ""),
      );
    });
  }
}
