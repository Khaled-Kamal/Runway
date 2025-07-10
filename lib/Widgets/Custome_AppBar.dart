import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomeAppbar({super.key, required this.prefix, required this.title, required this.Suffix});

  final String prefix;
  final String title;
  final String Suffix;

  @override
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      toolbarHeight: preferredSize.height,
      leading: SvgPicture.asset(prefix),
      leadingWidth: 0.0,

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           SvgPicture.asset(prefix),
           Text(title , style: GoogleFonts.inter(
            textStyle: TextStyle(
               fontWeight: FontWeight.w700,
               fontSize: 18,
               color : Color(0xff000000),
            ),
           ),),
           SvgPicture.asset(Suffix),
        ],
      ),
      
    );
  }
}
