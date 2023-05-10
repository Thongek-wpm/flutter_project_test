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
          )
        ],
      ),
    );
  }
}
