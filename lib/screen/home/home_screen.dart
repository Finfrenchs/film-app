import 'package:film_app/model/film_data.dart';
import 'package:film_app/screen/detail_screen/detail_movie.dart';
import 'package:film_app/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const CarouselIndicator(),
              const SizedBox(
                height: 5,
              ),
              buildOptionsMovieCategories(),
              const SizedBox(
                height: 30,
              ),
              //SubHead1
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Continue Watching',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: RichText(
                          text: TextSpan(
                        text: 'See all',
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            color: kTextColor2,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildContinueWatchingList(),
              const SizedBox(
                height: 30,
              ),
              //SubHead2
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular Movie',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: RichText(
                          text: TextSpan(
                        text: 'See all',
                        style: GoogleFonts.inter(
                            fontSize: 17,
                            color: kTextColor2,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              buildPopularMovie(mediaQueryWidth),
            ],
          ),
        ),
      ),
    );
  }

  ///Popular Movie List
  Container buildPopularMovie(double mediaQueryWidth) {
    return Container(
      width: mediaQueryWidth,
      //height: mediaQueryHeight,
      //margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          //color: kOtherColor2,
          borderRadius: BorderRadius.circular(12.0)),
      child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 10),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: filmData.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final FilmData data = filmData[index];
            return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailMovie(data: data);
                  }));
                },
                child: Container(
                  width: mediaQueryWidth,
                  //height: mediaQueryHeight,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: kOtherColor2,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white70.withOpacity(0.2),
                            spreadRadius: 0,
                            blurRadius: 1.5,
                            offset: const Offset(4, 4))
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          //padding: EdgeInsets.all(5.0),
                          margin: const EdgeInsets.only(
                              right: 15.0, left: 10.0, top: 5.0, bottom: 5.0),
                          child: Container(
                            width: 60,
                            height: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                image: DecorationImage(
                                    image: Image.asset(data.imagePoster).image,
                                    fit: BoxFit.cover)),
                          )),
                      SizedBox(
                        width: 180,
                        //margin: EdgeInsets.only(right: 50),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                data.name,
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                data.genre,
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: kIconPrimaryColor, shape: BoxShape.circle),
                          child: Center(
                            child: SvgPicture.asset(
                                'assets/icons/playbuttonround.svg'),
                          ),
                        ),
                      )
                    ],
                  ),
                )
                // Card(
                //   margin: const EdgeInsets.symmetric(vertical: 10),
                //   color: kOtherColor2,
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: <Widget>[
                //       Container(
                //         //padding: EdgeInsets.all(5.0),
                //         margin: EdgeInsets.only(right: 10.0, left: 10, top: 5, bottom: 5),
                //         child: Expanded(
                //             flex: 1,
                //             child: Container(
                //               width: 60,
                //               height: 75,
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(12.0),
                //                 image: DecorationImage(image: Image.asset(data.imagePoster).image, fit: BoxFit.cover)
                //               ),
                //             )),
                //       ),
                //       Container(
                //         width: 180,
                //         margin: EdgeInsets.only(right: 30),
                //         child: Expanded(
                //             flex: 2,
                //             child: Padding(
                //               padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 mainAxisSize: MainAxisSize.min,
                //                 children: <Widget>[
                //                   Text(data.name, style: GoogleFonts.inter(
                //                     fontSize: 14,
                //                     fontWeight: FontWeight.w700,
                //                     color: Colors.white
                //                   ),),
                //                   SizedBox(height: 10,),
                //                   Text(data.genre, style: GoogleFonts.inter(
                //                     fontSize: 12,
                //                     fontWeight: FontWeight.normal,
                //                     color: Colors.white
                //                   ),)
                //                 ],
                //               ),
                //             )),
                //       ),
                //       Container(
                //         width: 50,
                //         child: Expanded(
                //             flex: 3,
                //             child: Container(
                //               height: 40,
                //               width: 40,
                //               decoration: BoxDecoration(
                //                 color: Color(0xffF1EC40),
                //                 shape: BoxShape.circle
                //               ),
                //               child: Center(
                //                 child: SvgPicture.asset('assets/icons/playbuttonround.svg'),
                //               ),
                //             )),
                //       )
                //     ],
                //   ),
                // ),

                );
          }),
    );
  }

  ///Continue Watching
  Container buildContinueWatchingList() {
    return Container(
      height: 190,
      //margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filmData.length,
        itemBuilder: (context, index) {
          final FilmData data = filmData[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: kOtherColor2,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailMovie(data: data);
                    }));
                  },
                  child: Container(
                    height: 142,
                    width: 110,
                    //margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        color: kOtherColor2,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                        ),
                        image: DecorationImage(
                            image: Image.asset(data.imagePoster).image,
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  width: 80,
                  height: 30,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print("Play Pressed");
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/playbuttonround.svg',
                      color: Colors.black,
                    ),
                    label: Text(
                      "Play",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kIconPrimaryColor,
                        fixedSize: const Size(80, 20),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  ///Options Movie Category
  Padding buildOptionsMovieCategories() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ///TvShow
          InkWell(
            onTap: () {},
            child: Container(
              height: 110,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: kOtherColor1,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: Image.asset(
                          'assets/icons/television.png',
                          fit: BoxFit.cover,
                        ).image)),
                    // child: Center(
                    //   child: Image.asset('assets/icons/television.png', fit: BoxFit.cover,),
                    // ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'TV Show',
                    style: GoogleFonts.inter(
                        color: kTextColor1,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),

          ///Movie
          InkWell(
            onTap: () {},
            child: Container(
              height: 110,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: kOtherColor1,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: Image.asset(
                          'assets/icons/film.png',
                          fit: BoxFit.cover,
                        ).image)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Movie',
                    style: GoogleFonts.inter(
                        color: kTextColor1,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),

          ///Sport
          InkWell(
            onTap: () {},
            child: Container(
              height: 110,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: kOtherColor1,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: Image.asset(
                          'assets/icons/sport.png',
                          fit: BoxFit.cover,
                        ).image)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sport',
                    style: GoogleFonts.inter(
                        color: kTextColor1,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///AppBar
  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 8,
      backgroundColor: kPrimaryColor,
      title: Container(
        child: Row(
          //i am use Row because any plan combination text and logo
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'FinStream',
              style: GoogleFonts.audiowide(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: kIconSecondaryColor,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/notification.svg',
            color: kIconSecondaryColor,
          ),
        ),
      ],
    );
  }
}

///Slider Banner
class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1.0, keepPage: true);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 220,
          child: PageView.builder(
            controller: controller,
            itemCount: filmData.length,
            itemBuilder: (context, index) {
              final FilmData data = filmData[index];
              return Container(
                height: 185,
                margin: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: Image.asset(data.imageBanner).image,
                        fit: BoxFit.cover)),
              );
            },
          ),
        ),
        Container(
          // color: Colors.red.withOpacity(.4),
          child: SmoothPageIndicator(
            controller: controller,
            count: filmData.length,
            effect: CustomizableEffect(
              activeDotDecoration: DotDecoration(
                width: 22,
                height: 10,

                ///used for multicolor ===>>> color: Colors.indigo,
                rotationAngle: 180,
                verticalOffset: -10,
                borderRadius: BorderRadius.circular(24),
                // dotBorder: DotBorder(
                //   padding: 2,
                //   width: 2,
                //   color: Colors.indigo,
                // ),
              ),
              dotDecoration: DotDecoration(
                width: 15,
                height: 7,
                color: Colors.grey,
                // dotBorder: DotBorder(
                //   padding: 2,
                //   width: 2,
                //   color: Colors.grey,
                // ),
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(2),
                //     topRight: Radius.circular(16),
                //     bottomLeft: Radius.circular(16),
                //     bottomRight: Radius.circular(2)),
                borderRadius: BorderRadius.circular(16),
                verticalOffset: 0,
              ),
              spacing: 6.0,

              ///Used for Multicolor
              // activeColorOverride: (i) => colors[i],
              //inActiveColorOverride: (i) => colors[i],
              ///used for 2 color
              inActiveColorOverride: (i) => kDotInActiveColor,
              activeColorOverride: (i) => kIconPrimaryColor,
            ),
          ),
        ),
        const SizedBox(height: 32.0),
      ],
    );
  }
}

///used for multicolor
/*
final colors = const [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];
*/
