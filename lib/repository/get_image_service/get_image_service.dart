import 'dart:collection';

import 'package:base_flutter_framework/core/models/wall_paper.dart';
import 'package:base_flutter_framework/services/network/network.dart';
import 'package:base_flutter_framework/services/network/service.dart';
import 'package:dio/dio.dart';

import 'get_image_service_ipm.dart';

class GetImageService extends GetImageServiceIplm {
  @override
  Future<List<Wallpaper>> getListWallPapger({required int page}) async {
    Map<String, dynamic> param = HashMap();
    param.putIfAbsent("page", () => page);
    param.putIfAbsent("api_key", () => "26763d7bf2e94098192e629eb975dab0");
    Response? response = await ServiceCommon().getHttp(
        api: "/3/discover/movie",
        dio: NetWorking.apiInstanceUi!.getDio(),
        param: param);
    List data = response!.data['results'];
    List<Wallpaper> wallPages = [];
    data.forEach((element) {
      wallPages.add(Wallpaper.fromJson(element));
    });
    print(wallPages);
    return wallPages;
  }
}
