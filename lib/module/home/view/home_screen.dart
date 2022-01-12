import 'dart:io';

import 'package:base_flutter_framework/components/widget/load_more/load_more_grid_view.dart';
import 'package:base_flutter_framework/module/home/controller/home_controller.dart';
import 'package:base_flutter_framework/services/network/network.dart';
import 'package:base_flutter_framework/translations/app_translations.dart';
import 'package:base_flutter_framework/translations/transaction_key.dart';
import 'package:base_flutter_framework/utils/constants/colors.dart';
import 'package:base_flutter_framework/utils/image.dart';
import 'package:base_flutter_framework/utils/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

part 'home_screen.chidren.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColor.backgroundFormGreyColor,
          child: Obx(() => Column(
                children: [
                  _toolbar(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Popular list",
                      style: TextAppStyle().textGreyStyle(),
                    ),
                  ),
                  Expanded(
                    child: LoadMoreGridView(
                        listFullData: controller.wallPagers,
                        onLoading: () {
                          controller.loadData();
                        },
                        loading: controller.loading.value,
                        itembuilder: (context, index) {
                          return _itemImage(
                              controller.wallPagers.value[index].posterPath!,
                              controller.wallPagers.value[index].voteAverage!);
                        },
                        onclickItem: (index) {},
                        limit: controller.limit.value,
                        childAspectRatio: (Get.width / 2) / 250,
                        crossAxisCount: 2),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
