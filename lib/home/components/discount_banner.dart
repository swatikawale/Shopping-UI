import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatefulWidget {
   String txt1, txt2;
 DiscountBanner(this.txt1,this.txt2);

  @override
  State<DiscountBanner> createState() => DiscountBannerState(txt1,txt2);
}

class DiscountBannerState extends State<DiscountBanner> {


    String txt1, txt2;
 DiscountBannerState(this.txt1,this.txt2);
  @override
  Widget build(BuildContext context) {
    return Container(
      
        height: 190,
      width: double.infinity,
    //  margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration:const BoxDecoration(
        image:   DecorationImage(image:         
       AssetImage("assets/images/main.jpg"),
       fit: BoxFit.fill),
       // color: Color.fromARGB(255, 10, 10, 10),
     //   borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(text: "$txt1\n",  style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
              ),),
            TextSpan(
              text: "$txt2",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
