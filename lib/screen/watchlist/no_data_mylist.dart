import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/constant.dart';

class NoDataMylist extends StatelessWidget {
  const NoDataMylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 165,
                height: 165,
                child: SvgPicture.asset('assets/icons/empty-mylist.svg'),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'Your List Is  Empty',
                style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            Text(
              'Add the Movies you like,\nso they are easy to find and watch.',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 50,
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                width: 100,
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: ElevatedButton(
                  onPressed: () {
                    print('Search Pressed');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kIconPrimaryColor,
                      fixedSize: const Size(100, 40),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Text(
                    'Search',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
