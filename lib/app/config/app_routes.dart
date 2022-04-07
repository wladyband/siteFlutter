import 'package:azerox/app/modules/new_editions/new_editions_page.dart';
import 'package:get/get.dart';

import '../modules/home/home_bindings.dart';
import '../modules/home/home_page.dart';
import '../modules/initial/initial_bindings.dart';
import '../modules/initial/initial_page.dart';
import '../modules/login/login_bindings.dart';
import '../modules/login/login_page.dart';
import '../modules/new_editions/new_editions_bindings.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const InitialPage(),
      binding: InitialBindings(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.newEditions,
      page: () => const NewEditionsPage(),
      binding: NewEditionsBindings(),
    ),
  ];
}

class Routes {
  static const initial = '/initial';
  static const login = '/login';
  static const home = '/home';
  static const comments = '/comments';
  static const favoriteds = '/favoriteds';
  static const newEditions = '/newEditions';
  static const createPost = '/createPost';
}
