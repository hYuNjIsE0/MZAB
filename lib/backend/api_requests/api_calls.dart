import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class WriteAccountBookCall {
  static Future<ApiCallResponse> call({
    String? property = '',
    int? costs,
    String? category = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "property": "${property}",
  "category": "${category}",
  "costs": "${costs}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'writeAccountBook',
      apiUrl: 'http://43.202.21.142/account-books',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class ChangeProfileImageCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? profileImage,
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'changeProfileImage',
      apiUrl: 'http://43.202.21.142/users/profile-image',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {
        'profileImage': profileImage,
        'email': email,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ChangeNicknameCall {
  static Future<ApiCallResponse> call({
    String? profileName = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "nickname": "${profileName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'changeNickname',
      apiUrl: 'http://43.202.21.142/users/nickname',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAccountBookCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? date = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAccountBook',
      apiUrl: 'http://43.202.21.142/account-books',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
        'date': date,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic dd(dynamic response) => getJsonField(
        response,
        r'''$.data.accountBook''',
        true,
      );
}

class MakeFriendsRoomCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? password = '',
    String? description = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "name": "${name}",
  "password": "${password}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'makeFriendsRoom',
      apiUrl: 'http://43.202.21.142/rooms/making',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFriendsRoomCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFriendsRoom',
      apiUrl: 'http://43.202.21.142/rooms',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetQuizCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getQuiz',
      apiUrl: 'http://43.202.21.142/quiz',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetProfileImageCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProfileImage',
      apiUrl: 'http://43.202.21.142/users/profile-image',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetNicknameCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getNickname',
      apiUrl: 'http://43.202.21.142/users/nickname',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFriendsRoomDetailsCall {
  static Future<ApiCallResponse> call({
    int? roomId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFriendsRoomDetails',
      apiUrl: 'http://43.202.21.142/rooms/details',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'roomId': roomId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PostCommentCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    int? roomId,
    String? comment = '',
    String? category = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "roomId": ${roomId},
  "comment": "${comment}",
  "category": "${category}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postComment',
      apiUrl: 'http://43.202.21.142/rooms/comments',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PostUserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postUser',
      apiUrl: 'http://43.202.21.142/users',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EnterFriendsRoomCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    int? roomId,
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "roomId": ${roomId},
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'enterFriendsRoom',
      apiUrl: 'http://43.202.21.142/rooms/enter',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
