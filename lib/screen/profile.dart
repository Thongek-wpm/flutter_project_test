// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ProfilsUi extends StatefulWidget {
  const ProfilsUi({super.key});

  @override
  State<ProfilsUi> createState() => _ProfilsUiState();
}

class _ProfilsUiState extends State<ProfilsUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text(
              'Videos',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250, top: 10),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                );
              },
              itemCount: imageUrls.length,
              pagination: SwiperPagination(),
              control: SwiperControl(),
            ),
          )
        ],
      ),
    );
  }
}

List<String> imageUrls = [
  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
  'https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg',
  'https://images.freeimages.com/images/previews/ac9/railway-hdr-1361893.jpg',
  'https://cdn.pixabay.com/photo/2013/10/09/02/27/lake-192990__340.jpg',
  'https://us.123rf.com/450wm/zagzig/zagzig1903/zagzig190300032/119363177-sunrise-at-the-old-boathouse-at-pooley-bridge-on-the-shores-of-ullswater-in-the-lake-district-in.jpg?ver=6'
];
