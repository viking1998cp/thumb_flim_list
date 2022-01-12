import 'package:base_flutter_framework/core/models/wall_paper.dart';

abstract class GetImageServiceIplm {
  Future<List<Wallpaper>> getListWallPapger({required int page});
}
