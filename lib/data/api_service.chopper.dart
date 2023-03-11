// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiService;

  Future<Response> getRepos() {
    String username = '';
    String password = '';
    final $url = '';
    final $request = Request('GET', $url, client.baseUrl, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Basic ${base64Encode(utf8.encode('$username:$password'))}'
    });
    return client.send<dynamic, dynamic>($request);
  }
}
