part of discovery_v1_api_client;

class ApisResource extends Resource {

  ApisResource(Client client) : super(client) {
  }

  /**
   * Retrieve the description of a particular version of an api.
   *
   * [api] - The name of the API.
   *
   * [version] - The version of the API.
   *
   * [optParams] - Additional query parameters
   */
  Future<RestDescription> getRest(String api, String version, {Map optParams}) {
    var completer = new Completer();
    var url = "apis/{api}/{version}/rest";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (api == null) paramErrors.add("api is required");
    if (api != null) urlParams["api"] = api;
    if (version == null) paramErrors.add("version is required");
    if (version != null) urlParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new RestDescription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieve the list of APIs supported at this endpoint.
   *
   * [label] - Only include APIs with a matching label, such as 'graduated' or 'labs'.
   *   Allowed values:
   *     deprecated - APIs that have been deprecated.
   *     graduated - Supported APIs that have graduated from labs.
   *     labs - APIs that are experimental
   *
   * [name] - Only include APIs with the given name.
   *
   * [preferred] - Return only the preferred version of an API.
   *   Default: false
   *
   * [optParams] - Additional query parameters
   */
  Future<DirectoryList> list({String label, String name, bool preferred, Map optParams}) {
    var completer = new Completer();
    var url = "apis";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (label != null && !["deprecated", "graduated", "labs"].contains(label)) {
      paramErrors.add("Allowed values for label: deprecated, graduated, labs");
    }
    if (label != null) queryParams["label"] = label;
    if (name != null) queryParams["name"] = name;
    if (preferred != null) queryParams["preferred"] = preferred;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DirectoryList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

