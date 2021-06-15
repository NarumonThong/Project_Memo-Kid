import 'package:app_memokid/custom_drawer/app_theme.dart';
import 'package:app_memokid/custom_drawer/drawer_user_controller.dart';
import 'package:app_memokid/custom_drawer/home_drawer.dart';
import 'package:app_memokid/diary/menu/note_page.dart';
import 'package:app_memokid/emergency/emergency_page.dart';
import 'package:app_memokid/home_page/home_page.dart';
import 'package:app_memokid/media/media_page.dart';
import 'package:app_memokid/notifications/notifications_page.dart';
import 'package:app_memokid/nutrition/nutrition_home.dart';
import 'package:app_memokid/social/social_page.dart';
import 'package:flutter/material.dart';

class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;
  AnimationController sliderAnimationController;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = const HomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            animationController: (AnimationController animationController) {
              sliderAnimationController = animationController;
            },
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
            },
            screenView: screenView,
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = const HomePage();
        });
      } else if (drawerIndex == DrawerIndex.Nutrition) {
        setState(() {
          screenView = MyNutritiomPage();
        });
      } else if (drawerIndex == DrawerIndex.Emergency) {
        setState(() {
          screenView = EmergencyPage();
        });
      } else if (drawerIndex == DrawerIndex.Media) {
        setState(() {
          screenView = MediaPage();
        });
      } else if (drawerIndex == DrawerIndex.Diary) {
        setState(() {
          screenView = NotePage();
        });
      } else if (drawerIndex == DrawerIndex.Social) {
        setState(() {
          screenView = SocialPage();
        });
      } else if (drawerIndex == DrawerIndex.Notifications) {
        setState(() {
          screenView = NotificationsPage();
        });
      } else {
        //do in your way......
      }
    }
  }
}
