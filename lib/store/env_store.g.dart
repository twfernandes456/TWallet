// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EnvStore on _EnvStore, Store {
  final _$envAtom = Atom(name: '_EnvStore.env');

  @override
  Env get env {
    _$envAtom.reportRead();
    return super.env;
  }

  @override
  set env(Env value) {
    _$envAtom.reportWrite(value, super.env, () {
      super.env = value;
    });
  }

  final _$packageInfoAtom = Atom(name: '_EnvStore.packageInfo');

  @override
  PackageInfo get packageInfo {
    _$packageInfoAtom.reportRead();
    return super.packageInfo;
  }

  @override
  set packageInfo(PackageInfo value) {
    _$packageInfoAtom.reportWrite(value, super.packageInfo, () {
      super.packageInfo = value;
    });
  }

  @override
  String toString() {
    return '''
env: ${env},
packageInfo: ${packageInfo}
    ''';
  }
}
