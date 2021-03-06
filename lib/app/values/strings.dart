import 'package:buku_warung/app/modules/navigation/widgets/nvg_navigation_item_widget.dart';
import 'package:flutter/material.dart';

class MyStrings {
  //Homepage
  static List listPaymentImageHomapage = [
    "assets/icons/credit-card.png",
    "assets/icons/invoice.png",
    "assets/icons/qr-code.png"
  ];

  static List listPaymentHomepage = [
    "Bayar",
    "Tagih",
    "QRIS",
  ];

  static List listMenuHomepage = [
    "Pulsa",
    "Token Listrik",
    "E-Wallet",
    "Paket Data",
    "Lihat Semuanya",
  ];

  static List listMenuImageHomepage = [
    "assets/icons/mobile-payment.png",
    "assets/icons/idea.png",
    "assets/icons/wallet.png",
    "assets/icons/world-grid.png",
    "assets/icons/menu.png",
  ];

  static List listFiturHomepage = [
    "Catat Uang",
    "Catat Transaksi",
    "Mode Kasir",
    "Kelola Stok",
  ];

  static List listFiturImageHomepage = [
    "assets/icons/contacts.png",
    "assets/icons/transaction.png",
    "assets/icons/cash-machine.png",
    "assets/icons/stock.png",
  ];

  static List listFiturLainyaHomepage = [
    "Undang Teman",
    "Jadwal Pencatatan",
    "Atur Info Nota",
    "Buat Kartu Nama",
    "Lihat Semuanya",
  ];
  static List listFiturLainyaImageHomepage = [
    "assets/icons/group.png",
    "assets/icons/alarm-clock.png",
    "assets/icons/invoicess.png",
    "assets/icons/id-card.png",
    "assets/icons/menu.png",
  ];

  // Navigation
  static List listNavigationTab = [
    "Home",
    "Utang",
    "Pembayaran",
    "Transaksi",
    "Lainnya",
  ];

  static List listNavigationTabImage = [
    Icons.home_rounded,
    Icons.contacts_rounded,
    Icons.account_balance_wallet_rounded,
    Icons.refresh_rounded,
    Icons.tab_rounded,
  ];

  static List listNavigationItem = [
    NavigationItemWidget(nav1: 0),
    NavigationItemWidget(nav1:1),
    NavigationItemWidget(nav1: 2),
    NavigationItemWidget(nav1: 3),
    NavigationItemWidget(nav1: 4),
  ];
}
