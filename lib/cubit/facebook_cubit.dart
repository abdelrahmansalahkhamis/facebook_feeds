import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:facebook_demo_task/tab_controllers/feeds_page.dart';
import 'package:facebook_demo_task/tab_controllers/menu.dart';
import 'package:facebook_demo_task/tab_controllers/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'facebook_state.dart';

class FacebookCubit extends Cubit<FacebookStates> {
  FacebookCubit() : super(FacebookInitialState());

  static FacebookCubit get(context) => BlocProvider.of(context);

  List<Widget> bottomScreens = [
    FeedsPage(),
    //WatchPage(),
    //MarketPlacePage(),
    // GroupsPage(),
    NotificationsPage(),
    MenuPage()
  ];

  var currentIndex = 0;

  void changeIndex(index) {
    currentIndex = index;
    emit(FacebookChangeBottomNavTabsState());
  }

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: "feeds"),
    // BottomNavigationBarItem(
    //   icon: Icon(Icons.apps),
    //   label: "Watch",
    // ),
    //BottomNavigationBarItem(icon: Icon(Icons.alarm_on), label: "Market"),
    // BottomNavigationBarItem(icon: Icon(Icons.add_location), label: "Groups"),
    BottomNavigationBarItem(
        icon: Icon(Icons.notifications_on), label: "Notifications"),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: 'Menu',
    ),
  ];

  bool postsLoaded = false;

  void loadPosts() {
    emit(FacebookLoadingPostState());
    Timer(const Duration(seconds: 5), () {
      postsLoaded = true;
      print("Yeah, this line is printed after 3 seconds");
      emit(FacebookSuccessLoadingPostState());
    });
  }
}
