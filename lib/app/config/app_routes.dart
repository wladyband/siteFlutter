import 'package:azerox/app/modules/politics/consentient_terms.dart';
import 'package:azerox/app/modules/politics/politics.dart';
import 'package:azerox/app/modules/politics/use_terms.dart';
import 'package:get/get.dart';

import '../modules/initial/initial_bindings.dart';
import '../modules/initial/initial_page.dart';
import '../modules/login/login_bindings.dart';
import '../modules/login/login_page.dart';

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
      name: Routes.consentientTerms,
      page: () => const ConsentientTerms(),
    ),
    GetPage(
      name: Routes.politics,
      page: () => const Politics(),
    ),
    GetPage(
      name: Routes.useTerms,
      page: () => const UseTerms(),
    ),
  ];
}

class Routes {
  Routes._();

  static const initial = '/initial';
  static const login = '/login';
  static const home = '/home';
  static const comments = '/comments';
  static const favoriteds = '/favoriteds';
  static const newEditions = '/newEditions';
  static const createPost = '/createPost';
  static const politics = '/politics';
  static const useTerms = '/useTerms';
  static const consentientTerms = '/consentientTerms';
}
