import 'package:get_storage/get_storage.dart';

class Storage {
  Storage._();
  static Storage? _instance;
  static Storage instance() {
    _instance ??= Storage._();
    return _instance!;
  }

  final storage = GetStorage();

  Future setLoginStatus(bool isLogin) => storage.write('LoginStatus', isLogin);

  bool get getCurrentLoginStatus => storage.read('LoginStatus') ?? false;
}
