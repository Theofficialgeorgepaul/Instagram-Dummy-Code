import 'package:flutter/material.dart';
import 'package:instagram_clone/home_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int _selectedPage = 0;
PageController _pageController = PageController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {


    brosChangeForMe(int index) {
      setState(() {
        _selectedPage = index;
      });
      _pageController.jumpToPage(index);
    }

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
          onPageChanged: brosChangeForMe,
          controller: _pageController,
          children: const [
            HomeView(),
            Scaffold(),
            Scaffold(),
            Scaffold(),
            Scaffold()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedPage,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: brosChangeForMe,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_rounded,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_outlined), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_library), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
            ]),
      ),
    );
  }
}
