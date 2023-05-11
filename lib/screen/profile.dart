// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProfilsUi extends StatefulWidget {
  const ProfilsUi({super.key});

  @override
  State<ProfilsUi> createState() => _ProfilsUiState();
}

class _ProfilsUiState extends State<ProfilsUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
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
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                ),
                items: imageUrls
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Image.network(
                                e,
                                width: 1050,
                                height: 1500,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
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
