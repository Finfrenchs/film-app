import 'package:film_app/model/film_data.dart';
import 'package:film_app/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class DetailMovie extends StatelessWidget {
  const DetailMovie({Key? key, required this.data}) : super(key: key);
  final FilmData data;

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: mediaQueryWidth,
                    child: Image.asset(
                      data.imageBanner,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color(0xff737272).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon:
                                SvgPicture.asset('assets/icons/arrowback.svg')),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          data.name,
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      FavoriteBtn(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          data.rate,
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      child: Text(
                        data.genre,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 150.0,
                      height: 40.0,
                      child: RaisedButton.icon(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          color: kIconPrimaryColor,
                          icon: SvgPicture.asset(
                              'assets/icons/playbuttonborder.svg'),
                          label: Text(
                            'Play Now',
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    ButtonTheme(
                      minWidth: 150.0,
                      height: 40.0,
                      child: RaisedButton.icon(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          color: kIconPrimaryColor,
                          icon: SvgPicture.asset(
                              'assets/icons/playbuttonborder.svg'),
                          label: Text(
                            'Play Trailer',
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                    child: ButtonTheme(
                  height: 40.0,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.download_rounded),
                    label: Text(
                      'Download',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff272727),
                        fixedSize:
                            Size(MediaQuery.of(context).size.width, 40.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                )),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: buildText(data.synopsis),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: buildText("Cast : ${data.cast}"),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: buildText("Creator : ${data.creator}"),
              )
            ],
          ),
        ),
      )),
    );
  }

  ReadMoreText buildText(String text) {
    final styleButton = GoogleFonts.inter(
        fontSize: 14, fontWeight: FontWeight.normal, color: kIconPrimaryColor);
    return ReadMoreText(
      text,
      trimLength: 200,
      trimMode: TrimMode.Length,
      trimCollapsedText: 'Read More',
      trimExpandedText: 'Read Less',
      style: GoogleFonts.inter(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.normal),
      lessStyle: styleButton,
      moreStyle: styleButton,
    );
  }
}

class FavoriteBtn extends StatefulWidget {
  const FavoriteBtn({Key? key}) : super(key: key);

  @override
  State<FavoriteBtn> createState() => _FavoriteBtnState();
}

class _FavoriteBtnState extends State<FavoriteBtn> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
      color: isFavorite ? kIconPrimaryColor : Colors.white,
    );
  }
}
