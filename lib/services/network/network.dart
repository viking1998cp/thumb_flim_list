import 'package:base_flutter_framework/services/network/di_api.dart';

enum ENV { UI, AUTHEN }

class NetWorking {
  static ApiInstance? apiInstanceUi = new ApiInstance();
  static NetWorking? _network;
  factory NetWorking() {
    _network ??= NetWorking();
    return _network!;
  }
  static String urlImageView = "http://image.tmdb.org/t/p/w500/";
  static void init(ENV env) {
    String baseUrl = "";
    switch (env) {
      case ENV.UI:
        baseUrl = "https://api.themoviedb.org/";
        break;
      case ENV.AUTHEN:
        // baseUrl = "https://api.themoviedb.org/";
        break;
    }

    apiInstanceUi!.initDioSetup(baseUrl);
  }
}
