import 'package:cafe_ui_test1/product.dart';
import 'package:cafe_ui_test1/recipe_card.dart';
import 'package:flutter/material.dart';

import 'model/recipeModel.dart';

class InterceptPage extends StatelessWidget {

  final Product product;


  InterceptPage({
    required this.product,
  });

  List<Recipe> recipeList = [
      Recipe(
        title: 'Myrecipe',
        cookTime: '30min',
        rating: '2.0',
        thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360'
      ),
    Recipe(
        title: 'Myrecipe',
        cookTime: '30min',
        rating: '2.0',
        thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360'
    ),
    Recipe(
        title: 'Myrecipe',
        cookTime: '30min',
        rating: '2.0',
        thumbnailUrl: 'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffaf4ee),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(Icons.restaurant_menu,color:Colors.black),
            SizedBox(width: 10,),
            Text('商品一覧',style:TextStyle(color:Colors.black)),
            SizedBox(width:50),
          ],
        ),
      ),
      body:ListView.builder(
          itemCount: recipeList.length,
          itemBuilder: (context,index){
          return RecipeCard(
            title: recipeList[index].title,
            rating: recipeList[index].rating,
            cookTime: recipeList[index].cookTime,
            thumbnailUrl: recipeList[index].thumbnailUrl,
            product: product,
          );
      })
    );
  }
}
