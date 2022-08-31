import 'package:flutter/material.dart';

import '../../util/constant.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      body: Center(
        child: Text('Coming Soon Profile', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
      ),
    );
  }
}
