library discovery_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_discovery_v1_api/src/browser_client.dart';
import "package:google_discovery_v1_api/discovery_v1_api_client.dart";

/** Lets you discover information about other Google APIs, such as what APIs are available, the resource and method details for each API. */
@deprecated
class Discovery extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Discovery([oauth.OAuth2 this.auth]);
}
