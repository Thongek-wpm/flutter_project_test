import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
              child: CarouselSlider(
            options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
            ),
            items: imageList.map((imageList) {
              return Image.network(imageList);
            }).toList(),
          ))
        ],
      ),
    );
  }
}

final List<String> imageList = [
  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
  "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
  "https://images.freeimages.com/images/previews/ac9/railway-hdr-1361893.jpg",
  "https://cdn.pixabay.com/photo/2013/10/09/02/27/lake-192990__340.jpg",
  "https://us.123rf.com/450wm/zagzig/zagzig1903/zagzig190300032/119363177-sunrise-at-the-old-boathouse-at-pooley-bridge-on-the-shores-of-ullswater-in-the-lake-district-in.jpg?ver=6"
];
