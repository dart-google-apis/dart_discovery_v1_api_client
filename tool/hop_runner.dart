
library hop_runner;

import 'dart:async';
import 'dart:io';
import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main() {

  List pathList = [
     'lib/discovery_v1_api_browser.dart'
    ,'lib/discovery_v1_api_console.dart'
    ,'lib/discovery_v1_api_client.dart'
  ];    

  addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createDartAnalyzerTask(pathList));

  runHop();

}
    