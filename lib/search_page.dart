import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> imagec = [
    'assets/images/images1.jpg',
    'assets/images/images2.jpg',
    'assets/images/images3.jpg',
    'assets/images/images4.jpg',
    'assets/images/images5.jpg',
    'assets/images/images6.jpg',
    'assets/images/images7.jpg',
    'assets/images/images8.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('Search'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 21,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            imagec[index % imagec.length],
                          ),
                          fit: BoxFit.cover
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
