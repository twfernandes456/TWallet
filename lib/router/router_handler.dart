import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:optional/optional_internal.dart';
import 'package:tw_wallet_ui/views/backup_mnemonics/backup_mnemonics.dart';
import 'package:tw_wallet_ui/views/confirm_mnemonics/confirm_mnemonics.dart';
import 'package:tw_wallet_ui/views/home/home.dart';
import 'package:tw_wallet_ui/views/home/identity/identity_new_page.dart';
import 'package:tw_wallet_ui/views/identity_detail/identity_detail.dart';
import 'package:tw_wallet_ui/views/input_pin/input_pin_widget.dart';
import 'package:tw_wallet_ui/views/new_wallet/new_wallet_widget.dart';
import 'package:tw_wallet_ui/views/transfer_tw_points/send_tw_points.dart';
import 'package:tw_wallet_ui/views/tx_list/tx_list_details_page.dart';
import 'package:tw_wallet_ui/views/transfer/transfer.dart';
import 'package:tw_wallet_ui/views/tx_list/tx_list_page.dart';

var newWalletHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return NewWalletWidget();
  },
);

var newIdentityHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return IdentityNewPage();
});

var homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Home(
      defaultIndex: int.parse(Optional.ofNullable(params['index'])
          .map((indexes) => indexes.first)
          .orElse('0')));
});

var inputPinHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return PinInputWidget();
  },
);

var backupMnemonicsHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return BackupMnemonicsPage();
  },
);

var confirmMnemonicsHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ConfirmMnemonicsPage();
  },
);

var identityDetailHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  var id = params['id'].first;
  return IdentityDetailPage(id: id);
});

var transferTwPointsHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return TransferPage();
  },
);

var txListHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return TxListPage();
  },
);

var txListDetailsHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return TxListDetailsPage();
  },
);
