import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../models/homeapp.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner("New items with","Free shipping"), 
            Categories(),
         
            PopularProducts("Popular Products"),
               SizedBox(height: getProportionateScreenWidth(30)),
              DiscountBanner("Super Flash Sale","50% Off\n\n06 : 50 : 48"), 
           
           
            
               SizedBox(height: getProportionateScreenWidth(30)),
            HomeAppProducts("Electronics"),

            SizedBox(height: getProportionateScreenWidth(30)),
     DiscountBanner("NEW\nARRIVAL","\n\nSPECIAL OFFER"), 
           SizedBox(height: getProportionateScreenWidth(5)),
     DiscountBanner("SPECIAL OFFER","SUMMER\nSALE",), 
              
               SizedBox(height: getProportionateScreenWidth(30)),
                 PopularProducts("Home Appliances"),

            SizedBox(height: getProportionateScreenWidth(30)),
            

            
     DiscountBanner("50%\nSPECIAL OFFER","\nSUMMER"), 
     
               SizedBox(height: getProportionateScreenWidth(30)),
                 HomeAppProducts("Most Popular"),

            SizedBox(height: getProportionateScreenWidth(30)),

             SpecialOffers(),
                 SizedBox(height: getProportionateScreenWidth(30)),
            

          ],
        ),
      ),
    );
  }
}
