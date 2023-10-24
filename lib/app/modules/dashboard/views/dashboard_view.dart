import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_manager/app/constant/app_constant.dart';
import 'package:smart_manager/app/modules/home/views/home_view.dart';
import 'package:smart_manager/app/modules/profile/views/profile_view.dart';
import 'package:smart_manager/app/modules/users/views/users_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        extendBody: true,
        // appBar: AppBar(
        //   title: Text(controller.authC.currentUser.value.role == 'admin'
        //       ? 'Admin Panel'
        //       : 'Dashboard'),
        //   centerTitle: true,
        //   actions: [
        //     IconButton(
        //       splashRadius: 24,
        //       onPressed: () {
        //         controller.authC.signOut(context);
        //       },
        //       icon: const Icon(
        //         Icons.logout,
        //       ),
        //     ),
        //   ],
        // ),
        body: Center(
          child: IndexedStack(
            index: controller.tabIndex,
            children: const [
              HomeView(),
              UsersView(),
              ProfileView(),
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomNavigationBar(
              borderRadius: const Radius.circular(16),
              selectedColor: primaryColor,
              unSelectedColor: grey1,
              strokeColor: primaryColor,
              currentIndex: controller.tabIndex,
              bubbleCurve: Curves.decelerate,
              scaleFactor: 0.5,
              scaleCurve: Curves.fastOutSlowIn,
              isFloating: true,
              onTap: (index) {
                controller.changeTabIndex(index);
              },
              items: [
                CustomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  title: const Text(
                    'Home',
                  ),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.people),
                  title: const Text(
                    'Users',
                  ),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  title: const Text(
                    'Profile',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
          ],
        ),
      );
    });
  }
}
