import 'package:buku_warung/app/values/colors.dart';
import 'package:buku_warung/app/values/strings.dart';
import 'package:buku_warung/app/values/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homepage_controller.dart';
import '../widget/hpg_featured_and_ads_widget.dart';
import '../widget/hpg_fitur_ads_widget.dart';
import '../widget/hpg_fitur_lainya_widget.dart';
import '../widget/hpg_footer_widget.dart';
import '../widget/hpg_header_tittle_widget.dart';
import '../widget/hpg_list_fitur_widget.dart';
import '../widget/hpg_list_menu_widget.dart';
import '../widget/hpg_payment_widget.dart';
import '../widget/hpg_saldo_widget.dart';
import '../widget/hpg_tittle_heading2_widget.dart';

class HomepageView extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomepageController());
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: appBarHomepage(),
      body: bodydHomepage(controller),
    );
  }

  Widget bodydHomepage(HomepageController controller) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          firstContainer(),
          SizedBox(
            height: 20,
          ),
          HPGSaldoWidget(),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            color: Colors.black26,
          ),
          SizedBox(
            height: 20,
          ),
          HPGTittleHeading2(
            tittle: "Tambah Penghasilan Jual Pulsa & Tagihan 😎",
          ),
          SizedBox(
            height: 20,
          ),
          HPGListMenuWidget(
            listDataTittle: MyStrings.listMenuHomepage,
            listDataImage: MyStrings.listMenuImageHomepage,
          ),
          SizedBox(
            height: 20,
          ),
          HPGFeaturedAndAdsWidget(),
          HPGListFiturWidget(
            listDataTittle: MyStrings.listFiturHomepage,
            listDataImage: MyStrings.listFiturImageHomepage,
          ),
          SizedBox(
            height: 20,
          ),
          HPGFiturAdsWidget(),
          HPGFiturLainyaWidget(
            listDataTittle: MyStrings.listFiturLainyaHomepage,
            listDataImage: MyStrings.listFiturLainyaImageHomepage,
          ),
          HPGFooterWidget(),
        ],
      ),
    );
  }

  Container firstContainer() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      color: MyColors.primaryColor,
      child: Column(
        children: [
          HPGheaderTittleWidget(),
          SizedBox(
            height: 20,
          ),
          HPGheaderPaymnetWidget(),
        ],
      ),
    );
  }

  AppBar appBarHomepage() {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      leading: MaterialButton(
        onPressed: () {},
        child: Icon(
          Icons.menu,
          color: MyColors.white,
        ),
      ),
      title: Text(
        "Manoramask",
        style: TextStyle(
          fontFamily: MyFont.gilroyBold,
          fontSize: MySize.body,
          color: MyColors.white,
        ),
      ),
      elevation: 0,
    );
  }
}
