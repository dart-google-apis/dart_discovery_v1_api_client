part of discovery_v1_api_client;

class ApisResource_ extends Resource {

  ApisResource_(Client client) : super(client) {
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
  async.Future<RestDescription> getRest(core.String api, core.String version, {core.Map optParams}) {
    var url = "apis/{api}/{version}/rest";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RestDescription.fromJson(data));
  }

  /**
   * Retrieve the list of APIs supported at this endpoint.
   *
   * [name] - Only include APIs with the given name.
   *
   * [preferred] - Return only the preferred version of an API.
   *   Default: false
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DirectoryList> list({core.String name, core.bool preferred, core.Map optParams}) {
    var url = "apis";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DirectoryList.fromJson(data));
  }
}

