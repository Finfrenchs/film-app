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
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              Text(
                'Your List Is  Empty',
                style: GoogleFonts.inter(
                    fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Flexible(
                child: Text(
                  'Add the Movies you like,\nso they are easy to find and watch',
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50,),
              ButtonTheme(
                  minWidth: 120.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    color: kIconPrimaryColor,
                    child: Text(
                      'Search',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ))
            ],
          ),
        ));
  }
}
