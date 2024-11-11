import 'package:get/get.dart';
import 'package:testig_package/app/module/UserDetails/bindings/user_details_bindings.dart';
import 'package:testig_package/app/module/UserDetails/view/user_details_view.dart';
import '../module/MyHomePage/bindings/HomeBindings.dart';
import '../module/MyHomePage/view/MyHomePage.dart';

class AppRoutes {
  static const String home = '/';
  static const String userdetails = '/user_details';

  static final routes = [
    GetPage(
      name: '/',
      page: () => const HomeView(),
      binding: HomeBindings(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: '/user_details',
      page: () => UserDetailsView(),
      binding: UserDetailsBindings(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}
