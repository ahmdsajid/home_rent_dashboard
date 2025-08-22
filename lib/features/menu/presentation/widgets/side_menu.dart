import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/menu_controller.dart';

class SideMenu extends StatelessWidget {
  SideMenu({super.key});

  final MenuControllerX controller = Get.find<MenuControllerX>();

  final List<String> menuItems = [
    "Home",
    "Profile",
    "Nearby",
    "Bookmarks",
    "Notifications",
    "Messages",
    "Settings",
    "Help",
    "Logout",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.grey[200],
      child: Obx(
        () => ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final isSelected = controller.selectedIndex.value == index;
            return ListTile(
              title: Text(
                menuItems[index],
                style: TextStyle(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected ? Colors.blue : Colors.black,
                ),
              ),
              onTap: () {
                controller.changePage(index); // update page
              },
            );
          },
        ),
      ),
    );
  }
}
