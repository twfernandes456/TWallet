import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:tw_wallet_ui/common/application.dart';
import 'package:tw_wallet_ui/common/get_it.dart';
import 'package:tw_wallet_ui/common/secure_storage.dart';
import 'package:tw_wallet_ui/common/theme/color.dart';
import 'package:tw_wallet_ui/common/theme/index.dart';
import 'package:tw_wallet_ui/router/routers.dart';

Future<String> _initialRoute() async {
  bool hasPin = await SecureStorage.get(SecureStorageItem.MasterKey) != null;
  String mnemonics = await SecureStorage.get(SecureStorageItem.Mnemonics);

  return !hasPin
      ? Routes.inputPin
      : mnemonics == null ? Routes.newWallet : Routes.home;
}

Future<void> main() async {
  getItInit(isTest: false);
  runApp(MyApp(initialRoute: await _initialRoute()));
}

class MyApp extends StatelessWidget {
  final initialRoute;

  MyApp({@required this.initialRoute}) {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt.allReady(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'TW Wallet',
              theme: ThemeData(
                primaryColor: WalletColor.primary,
                disabledColor: Colors.grey,
                fontFamily: 'PingFangHK'
              ),
              initialRoute: initialRoute,
              onGenerateRoute: Application.router.generator,
            );
          } else {
            return Container(color: WalletTheme.mainBgColor);
          }
        });
  }
}
