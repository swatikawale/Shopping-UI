import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/home/components/section_title.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Offers"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Electronics"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Men's"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Women's"},
      {"icon": "assets/icons/Discover.svg", "text": "Kid's"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child:Column(children: [
      Padding(
          padding:EdgeInsets.only(left: 12),
              //EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12)),
          child: SectionTitle(title: "Categories", press: () {}),
        ),
        
        SizedBox(height: getProportionateScreenWidth(20)),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      )]),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
      this.icon,
      this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
         
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(30),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center, style: const TextStyle(fontSize: 10, color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
