import 'package:categories/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'CategoryItem.dart';
import 'MainCategorieItem.dart';



class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xffFD5D69)),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(6),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color(0xffFFC6C9),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/svg/notification.svg"),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            padding: EdgeInsets.all(6),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color(0xffFFC6C9),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/svg/search.svg"),
          ),
          SizedBox(
            width: 14,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(14),
          child: SvgPicture.asset(
            "assets/svg/vector.svg",
          ),
        ),
        backgroundColor: Color(0xFF1C0F0D),
      ),
      backgroundColor: Color(0xFF1C0F0D),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainCategoryItem(
                image: "assets/images/seafood.png", text: "Seafood"),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryItem(image: "assets/images/lunch.png", text: "Lunch"),
                CategoryItem(
                    image: "assets/images/breakfast.png", text: "Breakfast"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryItem(image: "assets/images/dinner.png", text: "Dinner"),
                CategoryItem(image: "assets/images/vegan.png", text: "Vegan"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryItem(
                    image: "assets/images/dessert.png", text: "Dessert"),
                CategoryItem(
                  image: "assets/images/drinks.png",
                  text: "Drinks",
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 280,
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xffFD5D69),
                borderRadius: BorderRadius.circular(33),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset("assets/svg/home.svg"),
                  SvgPicture.asset("assets/svg/community.svg"),
                  SvgPicture.asset("assets/svg/categories.svg"),
                  SvgPicture.asset("assets/svg/profile.svg"),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}