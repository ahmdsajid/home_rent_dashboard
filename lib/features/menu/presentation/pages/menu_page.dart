import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/menu_controller.dart';
import '../widgets/side_menu.dart';
import 'home_page.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  // Put the controller here; StatelessWidget is enough for GetX
  final MenuControllerX controller = Get.put(MenuControllerX());

  final List<Widget> screens = [
    const HomePage(),
    const Center(child: Text("👤 Profile Page")),
    const Center(child: Text("📍 Nearby Page")),
    const Center(child: Text("🔖 Bookmark Page")),
    const Center(child: Text("🔔 Notification Page")),
    const Center(child: Text("💬 Message Page")),
    const Center(child: Text("⚙️ Setting Page")),
    const Center(child: Text("❓ Help Page")),
    const Center(child: Text("🚪 Logout Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideMenu(), // This should call controller.changePage(index) on tap
          Expanded(
            // Wrap only the part that changes
            child: Obx(() => screens[controller.selectedIndex.value]),
          ),
        ],
      ),
    );
  }
}
