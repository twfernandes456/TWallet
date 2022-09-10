// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Change Identity`
  String get pageHomeChangeIdentity {
    return Intl.message(
      'Change Identity',
      name: 'pageHomeChangeIdentity',
      desc: '',
      args: [],
    );
  }

  /// `Ticket`
  String get pageHomeTicket {
    return Intl.message(
      'Ticket',
      name: 'pageHomeTicket',
      desc: '',
      args: [],
    );
  }

  /// `Certification`
  String get pageHomeCertification {
    return Intl.message(
      'Certification',
      name: 'pageHomeCertification',
      desc: '',
      args: [],
    );
  }

  /// `Asset`
  String get pageHomeAsset {
    return Intl.message(
      'Asset',
      name: 'pageHomeAsset',
      desc: '',
      args: [],
    );
  }

  /// `Digital Currency`
  String get pageHomeDigitalCurrency {
    return Intl.message(
      'Digital Currency',
      name: 'pageHomeDigitalCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Deed`
  String get pageHomeDeed {
    return Intl.message(
      'Deed',
      name: 'pageHomeDeed',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get pageHomeHome {
    return Intl.message(
      'Home',
      name: 'pageHomeHome',
      desc: '',
      args: [],
    );
  }

  /// `Discovery`
  String get pageHomeDiscovery {
    return Intl.message(
      'Discovery',
      name: 'pageHomeDiscovery',
      desc: '',
      args: [],
    );
  }

  /// `Identity`
  String get pageHomeIdentity {
    return Intl.message(
      'Identity',
      name: 'pageHomeIdentity',
      desc: '',
      args: [],
    );
  }

  /// `Me`
  String get pageHomeMe {
    return Intl.message(
      'Me',
      name: 'pageHomeMe',
      desc: '',
      args: [],
    );
  }

  /// `Discovery`
  String get pageDiscoveryDiscovery {
    return Intl.message(
      'Discovery',
      name: 'pageDiscoveryDiscovery',
      desc: '',
      args: [],
    );
  }

  /// `Health Cert`
  String get pageDiscoveryHealthCert {
    return Intl.message(
      'Health Cert',
      name: 'pageDiscoveryHealthCert',
      desc: '',
      args: [],
    );
  }

  /// `More VC`
  String get pageDiscoveryMoreVc {
    return Intl.message(
      'More VC',
      name: 'pageDiscoveryMoreVc',
      desc: '',
      args: [],
    );
  }

  /// `Verification Senario`
  String get pageDiscoveryVerificationSenario {
    return Intl.message(
      'Verification Senario',
      name: 'pageDiscoveryVerificationSenario',
      desc: '',
      args: [],
    );
  }

  /// `Identity`
  String get pageIdentityIdentity {
    return Intl.message(
      'Identity',
      name: 'pageIdentityIdentity',
      desc: '',
      args: [],
    );
  }

  /// `New Identity`
  String get pageIdentityNewIdentity {
    return Intl.message(
      'New Identity',
      name: 'pageIdentityNewIdentity',
      desc: '',
      args: [],
    );
  }

  /// `Copy successfully`
  String get pageIdentityCopySuccessfully {
    return Intl.message(
      'Copy successfully',
      name: 'pageIdentityCopySuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get pageMeMyProfile {
    return Intl.message(
      'My Profile',
      name: 'pageMeMyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Offline Payment`
  String get pageMeOfflinePayment {
    return Intl.message(
      'Offline Payment',
      name: 'pageMeOfflinePayment',
      desc: '',
      args: [],
    );
  }

  /// `My Chat`
  String get pageMeMyChat {
    return Intl.message(
      'My Chat',
      name: 'pageMeMyChat',
      desc: '',
      args: [],
    );
  }

  /// `Clear Data`
  String get pageMeClearData {
    return Intl.message(
      'Clear Data',
      name: 'pageMeClearData',
      desc: '',
      args: [],
    );
  }

  /// `Please be careful, all data would be deleted permanently and cannot be recovered`
  String get pageMeWarningOnClear {
    return Intl.message(
      'Please be careful, all data would be deleted permanently and cannot be recovered',
      name: 'pageMeWarningOnClear',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}