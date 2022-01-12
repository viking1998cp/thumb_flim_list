import 'package:base_flutter_framework/core/models/wall_paper.dart';
import 'package:base_flutter_framework/repository/get_image_service/get_image_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt page = 1.obs;

  RxBool loading = false.obs;
  RxBool limit = false.obs;

  RxList<Wallpaper> wallPagers = <Wallpaper>[].obs;

  GetImageService _getImageService = GetImageService();

  @override
  Future<void> onInit() async {
    super.onInit();
    loadData();
  }

  void loadData() async {
    if (loading.value == false) {
      loading.value = true;
      _getImageService.getListWallPapger(page: page.value).then((value) {
        loading.value = false;
        if (value.isNotEmpty) {
          wallPagers.addAll(value);
        } else {
          limit.value = true;
        }
      });
    }
  }
}
