import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_flutter/components/recipe_list_item.dart';
import 'package:recipe_flutter/components/recipe_menu.dart';
import 'package:recipe_flutter/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipleAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made coffee"),
            RecipeListItem("burger", "Made burger"),
            RecipeListItem("pizza", "Made pizza"),
          ],
        ),
      ),
    );
  }
}

// 함수 만들어보기
AppBar _buildRecipleAppBar() {
  return AppBar(
    backgroundColor: Colors.white, // appbar 배경색 지정
    elevation: 1.0,
    actions: [
      Icon(CupertinoIcons.search, color: Colors.black),
      SizedBox(width: 15),
      Icon(CupertinoIcons.heart, color: Colors.redAccent),
      SizedBox(width: 15),
    ],
  );
}