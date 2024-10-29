import '../../../global/constants/enum.dart';

enum AppConfig {
  base,
  baseImage,

  /// ==========/@ Controller @/==========
  aboutUrl,
  dashboardSliderUrl,
  dashboardMenuListModelUrl,
  directoryUrl,
  directoryOfficeUrl,
  directoryDepartmentUrl,
  directoryDepartmentDetailsUrl,
  newsEventNotificationTypeUrl,
}

extension AppUrlExtention on AppConfig {
  static String _baseUrl = "";

  static void setUrl(UrlLink urlLink) {
    switch (urlLink) {
      case UrlLink.isLive:
        _baseUrl = "";

        break;
      case UrlLink.isDev:
        _baseUrl = "https://sau.softwaresale.xyz/";

        break;
      case UrlLink.isLocalServer:
        _baseUrl = "";

        break;
    }
  }

  String get url {
    switch (this) {
      case AppConfig.base:
        return _baseUrl;
      case AppConfig.baseImage:
        return "";

      /// ==========/@ Controller @/==========
      case AppConfig.aboutUrl:
        return 'api/about-app';
      case AppConfig.dashboardSliderUrl:
        return 'api/home-slider';
      case AppConfig.dashboardMenuListModelUrl:
        return 'api/main-menu';
      case AppConfig.directoryUrl:
        return 'api/directory-type';
      case AppConfig.directoryOfficeUrl:
        return 'api/directory-category/2';
      case AppConfig.directoryDepartmentUrl:
        return 'api/directory-category/3';
      case AppConfig.directoryDepartmentDetailsUrl:
        return 'api/employee-information/3/3/6';
      case AppConfig.newsEventNotificationTypeUrl:
        return 'api/news-event-notification-type';
      default:
    }
    return "";
  }
}
