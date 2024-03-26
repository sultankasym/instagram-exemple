import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 86, 9),
        title: const Text('ListView exemple Instagram'),
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            // width: 300,
            // color: Color.fromARGB(255, 230, 86, 9),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, count) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 230, 86, 9),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, count) {
              return  Container(
                  decoration:  const BoxDecoration(    color: Color.fromARGB(255, 230, 86, 9),),
                  height: 50,
                  width: 70,
                  child: Center(
                    child: Text(
                      'Container $count',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
