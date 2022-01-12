import 'package:base_flutter_framework/repository/get_image_service/get_image_service.dart';
import 'package:base_flutter_framework/services/network/network.dart';
import 'package:base_flutter_framework/services/storage_service.dart';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:path_provider/path_provider.dart';

class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
    NetWorking.init(ENV.UI);
    GetImageService getImageService = new GetImageService();
    getImageService.getListWallPapger(page: 1);
  }
}
