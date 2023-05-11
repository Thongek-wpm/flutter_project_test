// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                                height: 2000,
                                fit: BoxFit.cover,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(
                                      FontAwesomeIcons.solidCirclePlay,
                                      size: 40.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      'My Into Video, Some Title',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Learn more about me, my services,\my commicaiton style, and how I can help.',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 80.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      Text(
                        'Record new Video',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
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
