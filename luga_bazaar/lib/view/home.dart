import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luga_bazaar/view/widgets/homepage.dart';
import 'package:luga_bazaar/view/widgets/profilepage.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // AppBar begins here
        appBar: AppBar(
          title: const Center(
            child: Text("LUGA BAZAAR"),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            )
          ],
        ),
        // AppBdar ends here
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {});
            currentIndex = index;
            print(index);
          },
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.amber,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
          ],
        ),
        body: currentIndex == 0
            ? const HomePageWidget()
            : currentIndex == 1
                ? const ProfilePageWidget()
                : currentIndex == 2
                    ? const Text("Search Page")
                    : const Text("Login Page"),
      ),
    );
  }
}
