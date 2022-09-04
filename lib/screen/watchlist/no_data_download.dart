import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/constant.dart';

class NoDataDownload extends StatelessWidget {
  const NoDataDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.28,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset('assets/icons/empty-download.png')
                            .image,
                        fit: BoxFit.cover)),
                //child: SvgPicture.asset('assets/icons/empty-download.svg'),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'No Content Download Yet',
                style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // Flexible(
            //   child:
            Text(
              'Download Your Favorite Movies, \nSo you can watch without internet connection.',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            //),
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
