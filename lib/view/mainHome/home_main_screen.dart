import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_mvvm_project/view/home/home_screen.dart';
import 'package:flutter_mvvm_project/view/news/news_screen.dart';
import 'package:flutter_mvvm_project/view/profile/profile_screen.dart';
import 'package:flutter_mvvm_project/view/setting/setting_screen.dart';
import '../../view_models/homeMainViewModel/home_main_view_model.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeMainViewModel>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomeScreen(),
                NewsScreen(),
                ProfileScreen(),
                SettingScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'home_bottom_bar_text'.tr,
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.news,
                label: 'news_bottom_bar_text'.tr,
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.profile_circled,
                label: 'profile_bottom_bar_text'.tr,
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.settings,
                label: 'setting_bottom_bar_text'.tr,
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
        icon: Icon(icon),
        label: label
    );
  }
}
