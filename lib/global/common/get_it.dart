import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:tw_wallet_ui/global/common/http/http_client.dart';
import 'package:tw_wallet_ui/global/service/api_provider.dart';
import 'package:tw_wallet_ui/global/service/smart_contract/contract.dart';
import 'package:tw_wallet_ui/global/store/env_store.dart';
import 'package:tw_wallet_ui/global/store/health_certification_store.dart';
import 'package:tw_wallet_ui/global/store/identity_store.dart';
import 'package:tw_wallet_ui/global/store/mnemonics.dart';

GetIt getIt = GetIt.instance;

class MockHttpClient extends Mock implements HttpClient {}

void getItInit({@required bool isTest}) {
  WidgetsFlutterBinding.ensureInitialized();

  getIt.registerSingleton<EnvStore>(EnvStore());

  if (isTest) {
    getIt.registerSingleton<HttpClient>(MockHttpClient());
  } else {
    getIt.registerSingleton<HttpClient>(HttpClient());

    getIt.registerSingletonAsync<MnemonicsStore>(MnemonicsBase.init);
    getIt.registerSingletonAsync<ContractService>(ContractService.init);
    getIt
        .registerSingletonAsync<IdentityStore>(IdentityStoreBase.fromJsonStore);
    getIt.registerSingleton(HealthCertificationStore());
  }

  getIt.registerSingleton<ApiProvider>(ApiProvider());
}
