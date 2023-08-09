import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutterfirebase_app/screen/HomePage.dart';
import 'package:flutterfirebase_app/screen/card/card_screen.dart';
import 'package:flutterfirebase_app/screen/profile_screen.dart';
import 'package:flutterfirebase_app/screen/search_screen.dart';
class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
 late List<Widget> screens;
int currentScreen = 0;
late PageController controller;
@override
  void initState() {
    super.initState();
    screens = const[
      HomePage(),
      SearchScreen(),
      CardScreen(),
      ProfileScreen(),
    ];
    controller = PageController(initialPage: currentScreen);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller:controller,
        children:screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreen,
       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
       elevation: 10,
       height: kBottomNavigationBarHeight,
       onDestinationSelected: (index){
         setState(() {
           currentScreen = index;
         });
         controller.jumpToPage(currentScreen);
       },
        destinations:const [
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.home),
              icon:Icon(IconlyLight.home),
              label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.search),
            icon:Icon(IconlyLight.search),
            label: "Search",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.bag2),
            icon: Icon(IconlyLight.bag2),
            label: "Cart",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.profile),
            icon:Icon(IconlyLight.profile),
            label: "Profile",
          ),
        ],

      ),
    );
  }
}
