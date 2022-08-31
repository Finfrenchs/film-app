class FilmData {
  String name;
  String genre;
  String rate;
  String synopsis;
  String cast;
  String creator;
  String imageBanner;
  String imagePoster;

  FilmData(
      {required this.name,
      required this.genre,
      required this.rate,
      required this.synopsis,
      required this.cast,
      required this.creator,
      required this.imageBanner,
      required this.imagePoster});
}

var filmData = [
  FilmData(
      name: 'Morbius',
      genre: 'Action | Fantasy | Adventure',
      rate: '18+',
      synopsis:
          "ahli biologi dan biokimia Yunani yang menderita penyakit darah langka. Dia mencoba obat berbahaya yang justru mengubahnya jadi seperti vampir.Saat bepergian ke New York, Morbius berusaha menemukan obat untuk penyakit langka yang dideritanya seumur hidup. Untuk melakukan itu, Morbius bereksperimen dengan pengobatan radikal yang melibatkan DNA kelelawar vampir dan terapi kejut listrik. Alih-alih sembuh, Morbius malah menderita penyakit yang jauh lebih buruk, membuatnya haus darah seperti vampir. Namun dia juga mendapatkan kemampuan persis makhluk supernatural tersebut.",
      cast:
          'Jared leto, Matt Smith, Michael Keaton, Adria Arjona, Tyrese Gibson, Jared Harris, Al Madrigal, Corey Johnson, Clara Rosager, Archie Renaux B, Charlie Shotwell, Tom Forbes, Ria Fend, Gloria Garcia, Bentley Kalu, Abraham Popoola, Daniel Eghan, Atul Sharma, etc.',
      creator: 'Sony Pictures Motion Picture Group',
      imageBanner: 'assets/images/banner/Morbiusbanner.jpg',
      imagePoster: 'assets/images/poster/Morbius.jpg'),
  FilmData(
      name: 'Doctor Strange in the Multiverse of Madness',
      genre: 'Super Hero | Action | Fantasy',
      rate: '13+',
      synopsis:
          'Perjalanan ke tempat yang tidak diketahui bersama Doctor Strange, dengan bantuan sekutu mistis baik lama maupun baru, melintasi realitas alternatif Multiverse yang membingungkan dan berbahaya untuk menghadapi musuh baru yang misterius.',
      cast:
          'Benedict Cumberbatch, John Krasinki, Rachel McAdams, Xochitl Gomes, Elizabeth Olsen, Bruce Campbel, Benedict Wong, Patrick Stewart, Lashana Lynch, Haruka Oshima, Chiwetel Ejiofor, Adam Hugil, Tony McCarthy, Julia Piaton, etc',
      creator: 'Marvel Cinema Universe',
      imageBanner: 'assets/images/banner/doctorstrange.jpg',
      imagePoster: 'assets/images/poster/doctors.jpg'),
  FilmData(
      name: 'Arrow',
      genre: 'Action | Adventure | Crime | Super Hero',
      rate: '18+',
      synopsis:
          "Arrow adalah serial televisi Amerika yang dikembangkan oleh Greg Berlanti, Andrew Kreisberg, dan Geoff Johns, yang mengudara di The CW. Serial ini didasari tokoh DC Comics Green Arrow (Oliver Queen), seorang pahlawan super berkostum, penumpas-kejahatan yang bersenjatakan busur & panah. Serial ini menceritakan Oliver Queen, playboy miliuner yang pascaterdampar lima tahun di pulau terpencil, kembali pulang bersenjatakan busur & panah untuk menumpas kejahatan di Kota Star sebagai vigilante rahasia bernama Green Arrow.",
      cast:
          'Stephen Amell, Katie Cassidy, Colin Donnell, Willa Holland, David Ramsey, Susanna Thompson, Paul Blackthorne, Emily Bett Rickards, Colton Haynes, Manu Bennett',
      creator: 'DC Comics',
      imageBanner: 'assets/images/banner/arrowbanner.png',
      imagePoster: 'assets/images/poster/arrow.jpg'),
  FilmData(
      name: 'SpiderMan No Way Home',
      genre: 'Super Hero | Action | Fantasy | Sci-Fi | Adventure',
      rate: '13+',
      synopsis:
          "Identitas Spider-Man sekarang sudah terungkap, dan Peter meminta bantuan Doctor Strange. namun sebuah kesalahan terjadi, dan itu justru mengundang musuh berbahaya dari dunia lain, mereka mulai bermunculan. Hal itu memaksa Peter mencari apa makna sebenarnya menjadi Spider-Man.",
      cast:
          'Tom Holland, Zendaya, Benedict Cumberbatch, Jacob Batalon, Jon Favreau, Jamie Foxx, Willem Dafoe, Alfred Molina, Benedict Wong, Tony Revolori, Marisa Tomei, Andrew Garfield, Tobey Maguire, Angourie Rice, Arian moayed, Hannibal Buress, Martin Starr',
      creator: 'Marvel Cinematic Universe',
      imageBanner: 'assets/images/banner/spidermanbanner.jpg',
      imagePoster: 'assets/images/poster/spiderman.jpg'),
  FilmData(
      name: 'The Flash',
      genre: 'Hero | Action | Adventure | Fiction',
      rate: '17+',
      synopsis: "Barry Allen/Flash (Grant Gustin) mungkin tidak pernah mengira akan kehilangan ibu saat usianya masih sangat belia. Sang ibu terbunuh oleh cahaya dan kilat misterius. Seiring waktu, secara rahasia dia mencari tahu dan memecahkan misteri tersebut sekaligus membuktikan ayahnya tidak bersalah.",
      cast: 'Grant Gustin, Candice Patton, Carlos Valdes, Danielle Panabaker, Tom Cavanagh, Jesse L. Martin, Danielle Nicolet, Hartley Sawyer, Jessica Parker, Jordan Fisher, Tom Felton, etc',
      creator: "DC Comics",
      imageBanner: 'assets/images/banner/flashbanner.jpg',
      imagePoster: 'assets/images/poster/flash.jpg')
];
