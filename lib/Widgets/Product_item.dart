import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.image, required this.title, required this.price, this.ontap});

  final String image;
  final String title;
  final String price;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xffECECEC),
            ),
            child: Image.asset(image),
          ),
      
          Text(
            title,
            style: GoogleFonts.inder(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xff000000),
              ),
            ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                price,
                style: GoogleFonts.inder(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),
      
              Icon(Icons.favorite_border),
            ],
          ),
        ],
      ),
    );
  }
}
