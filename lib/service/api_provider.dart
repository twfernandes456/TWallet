import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:tw_wallet_ui/common/get_it.dart';
import 'package:tw_wallet_ui/common/http/http_client.dart';
import 'package:tw_wallet_ui/models/api_response.dart';
import 'package:tw_wallet_ui/models/contract.dart';
import 'package:tw_wallet_ui/models/health_certification_token.dart';
import 'package:tw_wallet_ui/models/transaction.dart';
import 'package:tw_wallet_ui/models/tw_balance.dart';

class ApiProvider {
  final HttpClient _httpClient = getIt<HttpClient>();

  Future<TwBalance> fetchPointV1({@required String address}) async {
    return _httpClient
        .get('/v1/token/$address', loading: false)
        .then((response) {
      return Future.value(
          ApiResponse.fromJson(response.data, [FullType(TwBalance)]).result);
    });
  }

  Future<Contract> fetchContractAbiV1({@required String contractName}) async {
    return _httpClient
        .get('/v1/contracts/$contractName', loading: false)
        .then((response) {
      return Future.value(
          ApiResponse.fromJson(response.data, [FullType(Contract)]).result);
    });
  }

  Future<Response> identityRegister(String name, String publicKey,
      String address, String did, String signedRawTx) {
    return _httpClient.post('/v1/identities', {
      'name': name,
      'publicKey': publicKey,
      'address': address,
      'did': did,
      'signedTransactionRawData': signedRawTx
    });
  }

  Future<Response> transferPoint(
      String fromAddress, String publicKey, String signedRawTx) {
    return _httpClient.post('/v1/tw-points/transfer', {
      'fromAddress': fromAddress,
      'fromPublicKey': publicKey,
      'signedTransactionRawData': signedRawTx
    });
  }

  Future<List<Transaction>> fetchTxList(String fromAddress) async {
    return _httpClient
        .get('/v1/transactions?from_addr=$fromAddress')
        .then((response) {
      return Future.value(ApiResponse.fromJson(response.data, [
        FullType(BuiltList, [FullType(Transaction)])
      ]).result.toList());
    });
  }

  Future<Transaction> fetchTxDetails({@required String txHash}) async {
    return _httpClient.get('/v1/transactions/' + txHash).then((response) {
      return Future.value(
          ApiResponse.fromJson(response.data, [FullType(Transaction)]).result);
    });
  }

  Future<HealthCertificationToken> healthCertificate(String did, String phone,
      double temperature, String contact, String symptoms) {
    return _httpClient.post('/v1/health-certifications', {
      'did': did,
      'phone': phone,
      'temperature': temperature,
      'contact': contact,
      "symptoms": symptoms
    }).then((response) => Future.value(ApiResponse.fromJson(
        response.data, [FullType(HealthCertificationToken)]).result));
  }

  Future<HealthCertificationToken> fetchHealthCertificate(String did) {
    return _httpClient
        .get('/v1/health-certifications/$did', loading: false)
        .then((response) => Future.value(ApiResponse.fromJson(
            response.data, [FullType(HealthCertificationToken)]).result));
  }

  Future<Response> verifyHealthCertificationToken(String token) {
    return _httpClient
        .post('/v1/health-certifications/verify', {'token': token});
  }
}