import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/menu_controller.dart';

class SideMenu extends StatelessWidget {
  final MenuController controller = Get.find<MenuController>();

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {'icon': Icons.home, 'title': 'Home'},
      {'icon': Icons.person, 'title': 'Profile'},
      {'icon': Icons.location_on, 'title': 'Nearby'},
      {'icon': Icons.bookmark, 'title': 'Bookmark'},
      {'icon': Icons.notifications, 'title': 'Notification'},
      {'icon': Icons.message, 'title': 'Message'},
      {'icon': Icons.settings, 'title': 'Setting'},
      {'icon': Icons.help, 'title': 'Help'},
      {'icon': Icons.logout, 'title': 'Logout'},
    ];

    return Container(
      width: 220,
      color: const Color(0xFF2196F3),
      child: Obx(() => ListView.builder(
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              final item = menuItems[index];
              final isSelected = controller.selectedIndex.value == index;

              return InkWell(
                onTap: () => controller.selectMenu(index),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        item['icon'] as IconData,
                        color: isSelected ? Colors.blue : Colors.white,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        item['title'] as String,
                        style: TextStyle(
                          color: isSelected ? Colors.blue : Colors.white,
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
