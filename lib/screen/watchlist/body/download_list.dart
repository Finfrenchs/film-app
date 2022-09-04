import 'package:film_app/screen/watchlist/body/item_card_download.dart';
import 'package:flutter/material.dart';

class DownloadList extends StatelessWidget {
  const DownloadList({Key? key, this.data}) : super(key: key);
  final List? data;

  @override
  Widget build(BuildContext context) {
    return const ItemDownloadList();
  }
}
