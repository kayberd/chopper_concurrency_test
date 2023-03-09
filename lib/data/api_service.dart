import 'dart:convert';

import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  @Get(path: '')
  Future<Response> getRepos();

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://api-development.petleo.de/v1/appointment-management/branches/342/appointments/',
      services: [_$ApiService()],
      interceptors: [],
    );
    return _$ApiService(client);
  }
}
