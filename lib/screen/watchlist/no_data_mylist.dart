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
        padding: EdgeInsets.all(20.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 165,
                height: 165,
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image:
                //         Image.asset('assets/icons/empty-download.png').image,
                //         fit: BoxFit.cover)),
                child: SvgPicture.asset('assets/icons/empty-mylist.svg'),
              ),
            ),
            SizedBox(
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
            SizedBox(
              height: 15,
            ),
            // Flexible(
            //   child:
            Text(
              'Add the Movies you like,\nso they are easy to find and watch.',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            //),
            SizedBox(
              height: 50,
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                width: 100,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: ElevatedButton(
                  onPressed: () {
                    print('Search Pressed');
                  },
                  child: Text(
                    'Search',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: kIconPrimaryColor,
                      fixedSize: Size(100, 40),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
          ],
        ),
      ),
    );
  }
}
