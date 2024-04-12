import 'package:flutter/material.dart';
import 'package:list_view/search_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List<String> images = [
    'assets/images/images1.jpg',
    'assets/images/images2.jpg',
    'assets/images/images3.jpg',
    'assets/images/images4.jpg',
    'assets/images/images5.jpg',
    'assets/images/images6.jpg',
    'assets/images/images7.jpg',
    'assets/images/images8.jpg',
  ];
  var selectedPage = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {

    //drawer
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 204, 74, 4),
                    Color.fromARGB(255, 228, 152, 111)
                  ],
                ),
              ),
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Account'),
              onTap: () {
                // Действие при выборе пункта меню
              },
            ),
            ListTile(
              title: Text('About app'),
              onTap: () {
                // Действие при выборе пункта меню
              },
            ),
          ],
        ),
      ),


      body: PageView(
        controller: _pageController,
        children: [
          SearchScreen(images: images),
          SearchPage(),
          Scaffold(backgroundColor: Colors.amberAccent,),
          Scaffold(backgroundColor: Colors.red,)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        iconSize: 20,
        selectedItemColor: const Color.fromARGB(255, 238, 135, 80),
        unselectedItemColor: Colors.red,
        currentIndex: selectedPage,
        onTap: _openPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 30,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box_sharp,
              size: 30,
              color: Colors.black,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
              color: Colors.black,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void _openPage(int index) {
    setState(
      () {
        selectedPage = index;
        _pageController.jumpToPage(index);
      },
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          actions: [
            ElevatedButton.icon(
              onPressed: () {
              },
              icon: const Icon(
                Icons.favorite_border_outlined,
                size: 15,
                color: Color.fromARGB(255, 204, 74, 4),
              ),
              label: Text('Search'),
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.message,
              size: 30,
            ),
            const SizedBox(
              width: 20,
            )
          ],
          title: const Text(
            'Instagram',
            style: TextStyle(
                fontFamily: 'ButterflyKids-Regular',
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          expandedHeight: 60,
          pinned: false,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 204, 74, 4),
                    Color.fromARGB(255, 228, 152, 111)
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          images[index % images.length],
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 204, 74, 4),
                          Color.fromARGB(255, 228, 152, 111)
                        ],
                      ),
                    ),
                  ),
                );
              }),
              itemCount: 10,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 400,
                        height: 350,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 238, 135, 80),
                              Color.fromARGB(255, 198, 72, 4)
                            ],
                          ),
                        ),
                        child: Image.asset(
                          images[index % images.length],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.favorite_border),
                          onPressed: () {
                            final snackbar = SnackBar(
                              content: const Text('Like'),
                              duration: const Duration(milliseconds: 3),
                              action: SnackBarAction(
                                label: 'Ok',
                                onPressed: () {},
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          },
                          iconSize: 30,
                        ),
                        IconButton(
                          icon: const Icon(Icons.comment),
                          onPressed: () {
                            final snackbar = SnackBar(
                              content: const Text('comment'),
                              duration: const Duration(milliseconds: 3),
                              action: SnackBarAction(
                                label: 'Ok',
                                onPressed: () {},
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          },
                          iconSize: 30,
                        ),
                        IconButton(
                          icon: const Icon(Icons.shortcut_sharp),
                          onPressed: () {
                            final snackbar = SnackBar(
                              content: const Text('Share'),
                              duration: const Duration(milliseconds: 3),
                              action: SnackBarAction(
                                label: 'Ok',
                                onPressed: () {},
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          },
                          iconSize: 30,
                        ),
                      ],
                    ),
                    const Center(
                      child: Text(
                        "«Learning is a treasure that will follow its owner everywhere.»",
                      ),
                    )
                  ],
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
