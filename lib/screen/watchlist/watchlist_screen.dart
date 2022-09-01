import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/constant.dart';
import 'package:film_app/screen/watchlist/body/my_list.dart' as mylist;
import 'package:film_app/screen/watchlist/body/download_list.dart' as download;

class WatchlistScreen extends StatefulWidget {
  const WatchlistScreen({Key? key}) : super(key: key);

  @override
  State<WatchlistScreen> createState() => _WatchlistScreenState();
}

class _WatchlistScreenState extends State<WatchlistScreen> with SingleTickerProviderStateMixin {
  late TabController controller;
  List? _MyListData;
  List? _DownloadData;

  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      appBar: buildAppBar(),
      body: TabBarView(
          controller: controller,
          children: <Widget>[
            new mylist.MyList(
              data: _MyListData,
            ),
            new download.DownloadList(
              data: _DownloadData
            )
          ])
    );
  }

  AppBar buildAppBar() {
    //bool isActive = true;
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
              'WatchList',
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
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                //width: MediaQuery.of(context).size.width*0.5,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                decoration: BoxDecoration(
                    color: Color(0xff373737),
                    borderRadius: BorderRadius.circular(15)),
                child: TabBar(
                    controller: controller,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kIconPrimaryColor,
                    ),
                    labelColor: Colors.black,
                    tabs: <Widget>[
                      new Tab(
                          text: 'My List',
                        ),
                      new Tab(
                          text: 'Download',
                        ),

                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
