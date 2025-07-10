
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class SortFilterBar extends StatelessWidget {
  const SortFilterBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
           padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            
            border: Border.all(
              width: 1,
              color: Colors.black12,
            )
          ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            Text(
              'Sort by',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff000000),
              ),
            ),
            Gap(17),
            SvgPicture.asset('assets/image/sort_by.svg'),
            Spacer(),
            SvgPicture.asset('assets/image/filtter_icon.svg'),
            Gap(14),
            Text(
              'Filter',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff000000),
              ),
            ),
            Gap(14),
            SvgPicture.asset('assets/image/ion_grid-outline.svg'),
            Gap(14),
            SvgPicture.asset('assets/image/solar_users-group-rounded-outline.svg'),
            
        
        
          ],
        ),
      ),
    );
  }
}
