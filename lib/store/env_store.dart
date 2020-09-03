import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'package:package_info/package_info.dart';
import 'package:tw_wallet_ui/models/env.dart';

part 'env_store.g.dart';

Env globalEnv() => Get.find<EnvStore>().env;
String appName() => Get.find<EnvStore>().packageInfo?.appName ?? 'test-app';

class EnvStore extends _EnvStore with _$EnvStore {
  EnvStore(PackageInfo packageInfo) : super(packageInfo) {
    env = Env.fromDefault();
  }

  static Future<EnvStore> init({bool isTest = false}) async {
    PackageInfo packageInfo;
    if (!isTest) {
      packageInfo = await PackageInfo.fromPlatform();
    }
    return EnvStore(packageInfo);
  }
}

abstract class _EnvStore with Store {
  _EnvStore(this.packageInfo);

  @observable
  Env env;

  @observable
  PackageInfo packageInfo;
}
