import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:tw_wallet_ui/views/backup_mnemonics/backup_mnemonics.dart';
import 'package:tw_wallet_ui/views/confirm_mnemonics/confirm_mnemonics.dart';
import 'package:tw_wallet_ui/views/dapp/dapp.dart';
import 'package:tw_wallet_ui/views/health_certificate/health_certificate.dart';
import 'package:tw_wallet_ui/views/health_code/health_code.dart';
import 'package:tw_wallet_ui/views/health_code/health_code_store.dart';
import 'package:tw_wallet_ui/views/home/discovery/health_certification_page.dart';
import 'package:tw_wallet_ui/views/home/home.dart';
import 'package:tw_wallet_ui/views/home/identity/identity_new_page.dart';
import 'package:tw_wallet_ui/views/home/my/message_page.dart';
import 'package:tw_wallet_ui/views/identity_detail/identity_detail.dart';
import 'package:tw_wallet_ui/views/identity_qr/identity_qr_code.dart';
import 'package:tw_wallet_ui/views/input_pin/input_pin_widget.dart';
import 'package:tw_wallet_ui/views/login/magic_link_login_page.dart';
import 'package:tw_wallet_ui/views/login/web3auth_login_page.dart';
import 'package:tw_wallet_ui/views/new_wallet/new_wallet_widget.dart';
import 'package:tw_wallet_ui/views/profile/profile.dart';
import 'package:tw_wallet_ui/views/qr_scanner/qr_scanner.dart';
import 'package:tw_wallet_ui/views/restore_mnemonics/restore_mnemonics.dart';
import 'package:tw_wallet_ui/views/ssi/apply_vc_page.dart';
import 'package:tw_wallet_ui/views/ssi/compose_vc_page.dart';
import 'package:tw_wallet_ui/views/ssi/new_vc_page.dart';
import 'package:tw_wallet_ui/views/ssi/own_vc_page.dart';
import 'package:tw_wallet_ui/views/ssi/pass_page.dart';
import 'package:tw_wallet_ui/views/ssi/verification_scenario_page.dart';
import 'package:tw_wallet_ui/views/ssi/verification_scenario_qr_page.dart';
import 'package:tw_wallet_ui/views/transfer/transfer.dart';
import 'package:tw_wallet_ui/views/transfer_confirm/transfer_confirm.dart';
import 'package:tw_wallet_ui/views/tx_list/tx_list_details_page.dart';
import 'package:tw_wallet_ui/views/tx_list/tx_list_page.dart';

Handler newWalletHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return NewWalletWidget();
  },
);

Handler newIdentityHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return IdentityNewPage();
  },
);

Handler homeHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return Home(
      defaultIndex: _index(params['index']),
    );
  },
);

int _index(List<String>? indexes) {
  if (indexes == null || indexes.isEmpty) {
    return 0;
  } else {
    return int.parse(indexes.first);
  }
}

Handler inputPinHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return PinInputWidget(TextEditingController(), TextEditingController());
  },
);

Handler backupMnemonicsHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return BackupMnemonicsPage();
  },
);

Handler confirmMnemonicsHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return ConfirmMnemonicsPage();
  },
);

Handler profileHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    final String id = params['id']!.first;
    return ProfilePage(id: id);
  },
);

Handler transferTwPointsHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return TransferPage();
  },
);

Handler txListHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const TxListPage();
  },
);

Handler txListDetailsHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return TxListDetailsPage();
  },
);

Handler transferConfirmHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    final String amount = params['amount']!.first;
    final String toAddress = params['toAddress']!.first;
    final String currency = params['currency']!.first;
    return TransferConfirmPage(
      currency: currency,
      amount: amount,
      toAddress: toAddress,
    );
  },
);

Handler certificateHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    final String id = params['id']!.first;
    return HealthCertificatePage(id: id);
  },
);

Handler qrPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return IdentityQRPage();
  },
);

Handler qrScannerHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return QrScannerPage();
  },
);

Handler healthCodeHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return HealthCodePage(
      params['id']!.first,
      _extract(params['firstRefresh']),
    );
  },
);

FirstRefreshState _extract(List<String>? list) {
  if (list == null || list.isEmpty) {
    return FirstRefreshState.enabled;
  }
  if (list.first.toLowerCase() == 'true') {
    return FirstRefreshState.enabled;
  } else {
    return FirstRefreshState.disabled;
  }
}

Handler healthCertificationPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return HealthCertificationPage();
  },
);

Handler messagePageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const MessagePage();
  },
);
Handler chatDetailPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return null;

    // return const ChatPage(
    //   username: '',
    // );
  },
);

Handler identityDetailHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return IdentityDetailPage(id: params['id']!.first);
  },
);

Handler dappHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return DAppPage(id: params['id']!.first);
  },
);

Handler restoreMnemonicsHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RestoreMnemonicsPage();
  },
);

Handler ownVcPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return OwnVcPage();
  },
);

Handler composeVcPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return ComposeVcPage();
  },
);

Handler passPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> parms) {
    return PassPage();
  },
);

Handler applyVcPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return ApplyVcPage();
  },
);

Handler verificationScenarioPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> parms) {
    return VerificationScenarioPage();
  },
);

Handler verificationScenarioQrPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> parms) {
    final name = context!.settings!.arguments! as String;
    return VerificationScenarioQrPage(name: name);
  },
);

Handler newVcPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return NewVcPage();
  },
);

Handler magicLoginPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return MagicLinkLoginPage();
  },
);
Handler web3authLoginPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return Web3authLoginPage();
  },
);

Handler notFoundHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return null;
  },
);
