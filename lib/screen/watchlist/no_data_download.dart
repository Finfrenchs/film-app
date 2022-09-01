import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/constant.dart';

class NoDataDownload extends StatelessWidget {
  const NoDataDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 165,
              height: 165,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          Image.asset('assets/icons/empty-download.png').image,
                      fit: BoxFit.cover)),
              //child: SvgPicture.asset('assets/icons/empty-download.svg'),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'No Content Download Yet',
            style: GoogleFonts.inter(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Flexible(
            child: Text(
              'Download Your Favorite Movies,\nSo you can watch without internet connection.',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              width: 120,
              height: 50,
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
                    fixedSize: Size(120, 50),
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              )),
        ],
      ),
    ));
  }
}
