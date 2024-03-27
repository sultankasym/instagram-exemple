import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
//   List bgimage = [
// Image = ''
//   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 86, 9),
        title: const Text('ListView exemple Instagram'),
      ),
      body: ListView(
        children: [
          SizedBox(
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
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: 
            List.generate(10, (index) {
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20);
                 return Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                   child: Container(
                    
                      height: 300,
                      decoration: const BoxDecoration(
                           color: Color.fromARGB(255, 230, 86, 9),
                         image: DecorationImage(image: NetworkImage('https://t4.ftcdn.net/jpg/04/61/47/03/360_F_461470323_6TMQSkCCs9XQoTtyer8VCsFypxwRiDGU.jpg'), fit: BoxFit.cover),),
                   
                      child: Center(
                        child: Text('Container $index', style: const TextStyle(color: Colors.white)),
                      ),
                    ),
                 );
                })
              
            ),
            // height: 200,
            // child: ListView.builder(
            //   scrollDirection: Axis.vertical,
            //   itemCount: 10,
            //   itemBuilder: (context, count) {
            //   return Container(
            //       decoration:  const BoxDecoration(    color: Color.fromARGB(255, 230, 86, 9),),
            //       height: 50,
            //       width: 300,
            //       child: Center(
            //         child: Container(
                    
            //           color: Colors.red,
            //           width: double.infinity,
            //           height: 50,
            //           child: Text(
            //             'Container $count',
            //             style: const TextStyle(color: Colors.white),
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // ),
          ),

        ],
      ),
       
    );
  }
}
