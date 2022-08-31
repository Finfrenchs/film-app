import 'package:film_app/model/film_data.dart';
import 'package:film_app/screen/account/account_screen.dart';
import 'package:film_app/screen/exploration/explore_screen.dart';
import 'package:film_app/screen/watchlist/watchlist_screen.dart';
import 'package:film_app/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget _selectedScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: _selectedScreen),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            )
          ]),
          child: BottomAppBar(
            elevation: 10,
            color: kPrimaryColor,
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      minWidth: 80,
                      onPressed: () {
                        setState(() {
                          _selectedScreen = Home();
                          _selectedIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/home.svg',
                            color: _selectedIndex == 0
                                ? kIconPrimaryColor
                                : kIconSecondaryColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Home',
                            style: GoogleFonts.inter(
                              color: _selectedIndex == 0
                                  ? kIconPrimaryColor
                                  : kIconSecondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 80,
                      onPressed: () {
                        setState(() {
                          _selectedScreen = ExploreScreen();
                          _selectedIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/explo.svg',
                            color: _selectedIndex == 1
                                ? kIconPrimaryColor
                                : kIconSecondaryColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Exploration',
                            style: GoogleFonts.inter(
                              color: _selectedIndex == 1
                                  ? kIconPrimaryColor
                                  : kIconSecondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 80,
                      onPressed: () {
                        setState(() {
                          _selectedScreen = WatchlistScreen();
                          _selectedIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _selectedIndex == 2
                                ? Icons.favorite
                                : Icons.favorite_border,
                            //'assets/icons/watchlist.svg',
                            color: _selectedIndex == 2
                                ? kIconPrimaryColor
                                : kIconSecondaryColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Watchlist',
                            style: GoogleFonts.inter(
                              color: _selectedIndex == 2
                                  ? kIconPrimaryColor
                                  : kIconSecondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 80,
                      onPressed: () {
                        setState(() {
                          _selectedScreen = AccountScreen();
                          _selectedIndex = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/profile.svg',
                            color: _selectedIndex == 3
                                ? kIconPrimaryColor
                                : kIconSecondaryColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Akun',
                            style: GoogleFonts.inter(
                              color: _selectedIndex == 3
                                  ? kIconPrimaryColor
                                  : kIconSecondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
