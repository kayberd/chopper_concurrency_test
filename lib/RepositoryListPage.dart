import 'package:flutter/material.dart';

import 'data/api_service.dart';

class RepositoryListPage extends StatefulWidget {
  @override
  _RepositoryListPageState createState() => _RepositoryListPageState();
}

void _getRepos() async {
  final _service = ApiService.create();
  var time = DateTime.now();
  final _response = await Future.wait([_service.getRepos(), _service.getRepos(), _service.getRepos(), _service.getRepos(), _service.getRepos(), _service.getRepos()]);
  var time2 = DateTime.now();
  print(time2.difference(time).inMilliseconds.toString());
}

class _RepositoryListPageState extends State<RepositoryListPage> {
  @override
  Widget build(BuildContext context) {
    _getRepos();
    return Scaffold(
      appBar: AppBar(
        title: Text("Repositories"),
      ),
      body: Container(),
    );
  }
}
