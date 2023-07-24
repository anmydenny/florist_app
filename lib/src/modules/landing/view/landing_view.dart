import 'package:florist_app/src/modules/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/app_styles.dart';
import '../../Chat/view/chat_view.dart';
import '../../cart/view/cart_view.dart';
import '../../catalog/view/catalog_view.dart';
import '../controller/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  LandingView({Key? key}) : super(key: key);
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = [
    const HomeView(),
    const CatalogView(),
    const ChatView(),
    const CartView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Obx( () => _widgetOptions.elementAt(controller.selectedIndex.value),)
        ),
        bottomNavigationBar: Obx( () => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: AppColors.btnBgColor,
          unselectedItemColor: AppColors.bottomBarGreyShade,
          showUnselectedLabels: true,
          selectedLabelStyle: AppTextStyles.bottomNavigationLabel,
          unselectedLabelStyle: const TextStyle(color: AppColors.bottomBarGreyShade,),
          onTap: controller.onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),)
    );
  }
}
