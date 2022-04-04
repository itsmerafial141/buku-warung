import 'package:get/get.dart';

import 'package:buku_warung/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:buku_warung/app/modules/homepage/views/homepage_view.dart';
import 'package:buku_warung/app/modules/lainnya/bindings/lainnya_binding.dart';
import 'package:buku_warung/app/modules/lainnya/views/lainnya_view.dart';
import 'package:buku_warung/app/modules/navigation/bindings/navigation_binding.dart';
import 'package:buku_warung/app/modules/navigation/views/navigation_view.dart';
import 'package:buku_warung/app/modules/pembayaran/bindings/pembayaran_binding.dart';
import 'package:buku_warung/app/modules/pembayaran/views/pembayaran_view.dart';
import 'package:buku_warung/app/modules/transaksi/bindings/transaksi_binding.dart';
import 'package:buku_warung/app/modules/transaksi/views/transaksi_view.dart';
import 'package:buku_warung/app/modules/utang/bindings/utang_binding.dart';
import 'package:buku_warung/app/modules/utang/views/utang_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL_HP = Routes.HOMEPAGE;
  static const INITIAL_NV = Routes.NAVIGATION;

  static final routes = [
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.UTANG,
      page: () => UtangView(),
      binding: UtangBinding(),
    ),
    GetPage(
      name: _Paths.PEMBAYARAN,
      page: () => PembayaranView(),
      binding: PembayaranBinding(),
    ),
    GetPage(
      name: _Paths.TRANSAKSI,
      page: () => TransaksiView(),
      binding: TransaksiBinding(),
    ),
    GetPage(
      name: _Paths.LAINNYA,
      page: () => LainnyaView(),
      binding: LainnyaBinding(),
    ),
  ];
}
