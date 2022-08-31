import 'package:film_app/model/film_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCardList extends StatelessWidget {
  const ItemCardList({Key? key, this.data, this.press}) : super(key: key);
  final FilmData? data;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: InkWell(
        onTap: (){
          press;
          print('card pressed');
        },
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Image.asset(data!.imageBanner)),
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(data!.name, style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white
                      ),),
                      SizedBox(height: 10.0,),
                      Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: Text(
                            data!.rate,
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(data!.genre, style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.white
                      ),),
                    ],
                  ),))
            ],
          ),
        ),
      ),
    );
  }
}
