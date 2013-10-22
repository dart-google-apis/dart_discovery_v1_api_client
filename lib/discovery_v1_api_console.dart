library discovery_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_discovery_v1_api/src/console_client.dart';

import "package:google_discovery_v1_api/discovery_v1_api_client.dart";

/** Lets you discover information about other Google APIs, such as what APIs are available, the resource and method details for each API. */
class Discovery extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Discovery([oauth2.OAuth2Console this.auth]);
}
