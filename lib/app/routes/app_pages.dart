// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import 'package:buku_warung/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:buku_warung/app/modules/homepage/views/homepage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL_HP = Routes.HOMEPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => HomepageView(),
      binding: HomepageBinding(),
    ),
  ];
}
