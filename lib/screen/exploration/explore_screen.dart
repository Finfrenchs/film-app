import 'package:film_app/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/film_data.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();

}

class _ExploreScreenState extends State<ExploreScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Coming Soon Explore', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
            ],
          ),
      ),
    );
  }
}
