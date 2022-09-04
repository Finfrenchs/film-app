import 'package:film_app/screen/watchlist/no_data_mylist.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key, this.data}) : super(key: key);
  final List? data;

  @override
  Widget build(BuildContext context) {
    return const NoDataMylist();
    //   Container(
    //   alignment: Alignment.center,
    //   padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       Expanded(child: Container(
    //         width: double.infinity,
    //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    //         child: ListView.builder(
    //             itemCount: data == null ? 0 : data!.length,
    //             padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
    //             scrollDirection: Axis.vertical,
    //             itemBuilder: (context, index) => ItemCardList(
    //               data: data![index],
    //               press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailMovie(data: data![index]))),
    //             )
    //         ),
    //       ))
    //     ],
    //   ),
    // );
  }
}
