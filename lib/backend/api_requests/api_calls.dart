import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Deeepseek Group Code

class DeeepseekGroup {
  static String getBaseUrl() => 'https://openrouter.ai/api/v1';
  static Map<String, String> headers = {};
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
  static TokenAnalyzerCall tokenAnalyzerCall = TokenAnalyzerCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = DeeepseekGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "deepseek/deepseek-r1-distill-qwen-32b:free",
  "messages": [
    {
      "role": "user",
      "content": "Hey! Let's take a quick look at your recent Solana trades: ${escapeStringForJson(prompt)}. I’ll walk you through what went well, where you can improve, and give you some tips to level up your strategy. \\n\\nHere's the deal: I’ll focus on trades where you've both bought and sold. We’ll always assume you bought first and sold second so that we get the calculations right. If you’ve only bought and haven’t sold yet, we’ll ignore those trades for now. Let’s dive in and see how you did!"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class TokenAnalyzerCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    String? apiKey =
        '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',
  }) async {
    final baseUrl = DeeepseekGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "deepseek/deepseek-r1-distill-qwen-32b:free",
  "messages": [
    {
      "role": "user",
      "content": "Hey! Let's analyze a Solana memecoin using its token address: ${escapeStringForJson(prompt)}. I'll break down its key metrics, price trends, risks, and overall potential, then give it a buy-worthiness score from 1 to 10.\\n\\nHere’s what I’ll cover:\\n\\n🚀 **Token Overview**\\n   - Name & Symbol\\n   - Token Address: ${escapeStringForJson(prompt)}\\n   - Market Cap & Liquidity\\n   - Trading Volume & Current Price\\n\\n📈 **Price Performance**\\n   - % Change in the last 1h, 6h, 24h\\n   - Recent trend: Uptrend, Downtrend, or Stable\\n\\n⚠️ **Risk Analysis**\\n   - Rug pull risk (LP burn status, mint authority, deployer history)\\n   - Security concerns (fake socials, bot-driven volume, possible exit scam)\\n\\n🔍 **Final Verdict**\\n   - **Buy-Worthiness Score (1-10)**: Based on liquidity, market activity, security, and memecoin hype potential.\\n\\nLet’s see if this is the next Solana moonshot or just another degen trap! 🌕💎"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Token Analyzer',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

/// End Deeepseek Group Code

class GetBTCPriceCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetBTCPrice',
      apiUrl: 'https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? usd(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.USD''',
      ));
}

class GetETHPriceCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetETHPrice',
      apiUrl: 'https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=USD',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? usd(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.USD''',
      ));
}

class GetXRPPriceCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetXRPPrice',
      apiUrl: 'https://min-api.cryptocompare.com/data/price?fsym=XRP&tsyms=USD',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? usd(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.USD''',
      ));
}

class GetBNBPriceCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetBNBPrice',
      apiUrl: 'https://min-api.cryptocompare.com/data/price?fsym=BNB&tsyms=USD',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSOLPriceCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetSOLPrice',
      apiUrl: 'https://min-api.cryptocompare.com/data/price?fsym=SOL&tsyms=USD',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletCall {
  static Future<ApiCallResponse> call({
    String? addy = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Wallet',
      apiUrl: 'https://data.solanatracker.io/wallet/${addy}',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key': '9dca49cf-0ef7-48e5-9fe8-a843af7b1103',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.tokens[:].token.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imageUrl(dynamic response) => (getJsonField(
        response,
        r'''$.tokens[:].token.image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.tokens[:].balance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? usdValue(dynamic response) => (getJsonField(
        response,
        r'''$.tokens[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class YessirCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'YESSIR',
      apiUrl:
          'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum,ripple,binancecoin,solana&vs_currencies=usd',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UntzCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'UNTZ',
      apiUrl:
          'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,SOL,BNB,XRP&tsyms=USD',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HeliusCall {
  static Future<ApiCallResponse> call({
    String? addy = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Helius',
      apiUrl:
          'curl https://api.helius.xyz/v0/addresses/${addy}/balances?api-key=335075b9-cbd5-4345-82dd-01de853aa329',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CieloCall {
  static Future<ApiCallResponse> call({
    String? addy = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cielo',
      apiUrl: 'https://api.solanatracker.io/pnl/${addy}',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key': '9dca49cf-0ef7-48e5-9fe8-a843af7b1103',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionsCall {
  static Future<ApiCallResponse> call({
    String? addy = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Transactions',
      apiUrl: 'https://data.solanatracker.io/wallet/${addy}/trades?limit=5',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key': '9dca49cf-0ef7-48e5-9fe8-a843af7b1103',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? tradesfive(dynamic response) => getJsonField(
        response,
        r'''$.trades[0:10]''',
        true,
      ) as List?;
}

class TokenInsightCall {
  static Future<ApiCallResponse> call({
    String? addy = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TokenInsight',
      apiUrl: 'https://data.solanatracker.io/tokens/${addy}',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key': '9dca49cf-0ef7-48e5-9fe8-a843af7b1103',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
