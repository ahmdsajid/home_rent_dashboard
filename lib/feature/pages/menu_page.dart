import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/side_menu.dart';
import 'home_page.dart'; // Home screen UI

class MenuPage extends StatelessWidget {
  final MenuController controller = Get.put(MenuController());

  final List<Widget> screens = [
    HomePage(),
    Center(child: Text("👤 Profile Page")),
    Center(child: Text("📍 Nearby Page")),
    Center(child: Text("🔖 Bookmark Page")),
    Center(child: Text("🔔 Notification Page")),
    Center(child: Text("💬 Message Page")),
    Center(child: Text("⚙️ Setting Page")),
    Center(child: Text("❓ Help Page")),
    Center(child: Text("🚪 Logout Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideMenu(),
          Expanded(
            child: Obx(() => screens[controller.selectedIndex.value]),
          ),
        ],
      ),
    );
  }
}

extension on MenuController {
  get selectedIndex => null;
}
