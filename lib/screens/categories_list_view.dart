import 'package:flutter/cupertino.dart';
import 'package:news_appp/models/category_model.dart';

import 'category.dart';


class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel>categories=const [
    CategoryModel(image:"assets/business1.jpg",categoryName:"Business"),
    CategoryModel(image:"assets/health.avif",categoryName:"Health"),
    CategoryModel(image:"assets/technology.jpeg",categoryName:"Technology"),
    CategoryModel(image:"assets/sports.avif",categoryName:"Sports"),
    CategoryModel(image:"assets/science.avif",categoryName:"Science"),
    CategoryModel(image:"assets/entertaiment.avif",categoryName:"Entertainment"),
    CategoryModel(image:"assets/general.avif",categoryName:"General"),


  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:85,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,

          itemBuilder: (context,index){

            return  CategoryCard(
              category: categories[index],
            );
          }),
    );

  }}

