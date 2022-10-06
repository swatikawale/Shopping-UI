import 'package:flutter/material.dart';
import 'package:shopping/components/product_card.dart';
import 'package:shopping/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';
class PopularProducts extends StatefulWidget {
  String txt;
   PopularProducts(this.txt);
  @override
  State<PopularProducts> createState() => PopularProductsState(txt);
}
 


class PopularProductsState extends State<PopularProducts> {
    String txt;
   PopularProductsState(this.txt);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: txt, press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
