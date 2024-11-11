import 'package:get/get.dart';
import '../module/MyHomePage/bindings/HomeBindings.dart';
import '../module/MyHomePage/view/MyHomePage.dart';

class AppRoutes {
  static const String home = '/';

  static final routes = [
    GetPage(
      name: '/',
      page: () => const HomeView(),
      binding: HomeBindings(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}
