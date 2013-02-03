part of discovery_v1_api_client;

class DirectoryList {

  /** Indicate the version of the Discovery API used to generate this doc. */
  String discoveryVersion;

  /** The individual directory entries. One entry per api/version pair. */
  List<DirectoryListItems> items;

  /** The kind for this response. */
  String kind;

  /** Create new DirectoryList from JSON data */
  DirectoryList.fromJson(Map json) {
    if (json.containsKey("discoveryVersion")) {
      discoveryVersion = json["discoveryVersion"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new DirectoryListItems.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DirectoryList */
  Map toJson() {
    var output = new Map();

    if (discoveryVersion != null) {
      output["discoveryVersion"] = discoveryVersion;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DirectoryList */
  String toString() => JSON.stringify(this.toJson());

}

class DirectoryListItems {

  /** The description of this API. */
  String description;

  /** A link to the discovery document. */
  String discoveryLink;

  /** The url for the discovery REST document. */
  String discoveryRestUrl;

  /** A link to human readable documentation for the API. */
  String documentationLink;

  /** Links to 16x16 and 32x32 icons representing the API. */
  DirectoryListItemsIcons icons;

  /** The id of this API. */
  String id;

  /** The kind for this response. */
  String kind;

  /** Labels for the status of this API, such as labs or deprecated. */
  List<String> labels;

  /** The name of the API. */
  String name;

  /** True if this version is the preferred version to use. */
  bool preferred;

  /** The title of this API. */
  String title;

  /** The version of the API. */
  String version;

  /** Create new DirectoryListItems from JSON data */
  DirectoryListItems.fromJson(Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("discoveryLink")) {
      discoveryLink = json["discoveryLink"];
    }
    if (json.containsKey("discoveryRestUrl")) {
      discoveryRestUrl = json["discoveryRestUrl"];
    }
    if (json.containsKey("documentationLink")) {
      documentationLink = json["documentationLink"];
    }
    if (json.containsKey("icons")) {
      icons = new DirectoryListItemsIcons.fromJson(json["icons"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("labels")) {
      labels = [];
      json["labels"].forEach((item) {
        labels.add(item);
      });
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("preferred")) {
      preferred = json["preferred"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
  }

  /** Create JSON Object for DirectoryListItems */
  Map toJson() {
    var output = new Map();

    if (description != null) {
      output["description"] = description;
    }
    if (discoveryLink != null) {
      output["discoveryLink"] = discoveryLink;
    }
    if (discoveryRestUrl != null) {
      output["discoveryRestUrl"] = discoveryRestUrl;
    }
    if (documentationLink != null) {
      output["documentationLink"] = documentationLink;
    }
    if (icons != null) {
      output["icons"] = icons.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (labels != null) {
      output["labels"] = new List();
      labels.forEach((item) {
        output["labels"].add(item);
      });
    }
    if (name != null) {
      output["name"] = name;
    }
    if (preferred != null) {
      output["preferred"] = preferred;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (version != null) {
      output["version"] = version;
    }

    return output;
  }

  /** Return String representation of DirectoryListItems */
  String toString() => JSON.stringify(this.toJson());

}

/** Links to 16x16 and 32x32 icons representing the API. */
class DirectoryListItemsIcons {

  /** The url of the 16x16 icon. */
  String x16;

  /** The url of the 32x32 icon. */
  String x32;

  /** Create new DirectoryListItemsIcons from JSON data */
  DirectoryListItemsIcons.fromJson(Map json) {
    if (json.containsKey("x16")) {
      x16 = json["x16"];
    }
    if (json.containsKey("x32")) {
      x32 = json["x32"];
    }
  }

  /** Create JSON Object for DirectoryListItemsIcons */
  Map toJson() {
    var output = new Map();

    if (x16 != null) {
      output["x16"] = x16;
    }
    if (x32 != null) {
      output["x32"] = x32;
    }

    return output;
  }

  /** Return String representation of DirectoryListItemsIcons */
  String toString() => JSON.stringify(this.toJson());

}

class JsonSchema {

  /** A reference to another schema. The value of this property is the "id" of another schema. */
  String $ref;

  /** If this is a schema for an object, this property is the schema for any additional properties with dynamic keys on this object. */
  JsonSchema additionalProperties;

  /** Additional information about this property. */
  JsonSchemaAnnotations annotations;

  /** The default value of this property (if one exists). */
  String default;

  /** A description of this object. */
  String description;

  /** Values this parameter may take (if it is an enum). */
  List<String> enum;

  /** The descriptions for the enums. Each position maps to the corresponding value in the "enum" array. */
  List<String> enumDescriptions;

  /** An additional regular expression or key that helps constrain the value. For more details see: http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.23 */
  String format;

  /** Unique identifier for this schema. */
  String id;

  /** If this is a schema for an array, this property is the schema for each element in the array. */
  JsonSchema items;

  /** Whether this parameter goes in the query or the path for REST requests. */
  String location;

  /** The maximum value of this parameter. */
  String maximum;

  /** The minimum value of this parameter. */
  String minimum;

  /** The regular expression this parameter must conform to. Uses Java 6 regex format: http://docs.oracle.com/javase/6/docs/api/java/util/regex/Pattern.html */
  String pattern;

  /** If this is a schema for an object, list the schema for each property of this object. */
  JsonSchemaProperties properties;

  /** The value is read-only, generated by the service. The value can not be modified by the client. It the value is included in a POST, PUT or PATCH request, it will be ignored by the service. */
  bool readOnly;

  /** Whether this parameter may appear multiple times. */
  bool repeated;

  /** Whether the parameter is required. */
  bool required;

  /** The value type for this schema. A list of values can be found here: http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.1 */
  String type;

  /** Create new JsonSchema from JSON data */
  JsonSchema.fromJson(Map json) {
    if (json.containsKey("$ref")) {
      $ref = json["$ref"];
    }
    if (json.containsKey("additionalProperties")) {
      additionalProperties = new JsonSchema.fromJson(json["additionalProperties"]);
    }
    if (json.containsKey("annotations")) {
      annotations = new JsonSchemaAnnotations.fromJson(json["annotations"]);
    }
    if (json.containsKey("default")) {
      default = json["default"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("enum")) {
      enum = [];
      json["enum"].forEach((item) {
        enum.add(item);
      });
    }
    if (json.containsKey("enumDescriptions")) {
      enumDescriptions = [];
      json["enumDescriptions"].forEach((item) {
        enumDescriptions.add(item);
      });
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = new JsonSchema.fromJson(json["items"]);
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("maximum")) {
      maximum = json["maximum"];
    }
    if (json.containsKey("minimum")) {
      minimum = json["minimum"];
    }
    if (json.containsKey("pattern")) {
      pattern = json["pattern"];
    }
    if (json.containsKey("properties")) {
      properties = new JsonSchemaProperties.fromJson(json["properties"]);
    }
    if (json.containsKey("readOnly")) {
      readOnly = json["readOnly"];
    }
    if (json.containsKey("repeated")) {
      repeated = json["repeated"];
    }
    if (json.containsKey("required")) {
      required = json["required"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for JsonSchema */
  Map toJson() {
    var output = new Map();

    if ($ref != null) {
      output["$ref"] = $ref;
    }
    if (additionalProperties != null) {
      output["additionalProperties"] = additionalProperties.toJson();
    }
    if (annotations != null) {
      output["annotations"] = annotations.toJson();
    }
    if (default != null) {
      output["default"] = default;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (enum != null) {
      output["enum"] = new List();
      enum.forEach((item) {
        output["enum"].add(item);
      });
    }
    if (enumDescriptions != null) {
      output["enumDescriptions"] = new List();
      enumDescriptions.forEach((item) {
        output["enumDescriptions"].add(item);
      });
    }
    if (format != null) {
      output["format"] = format;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.toJson();
    }
    if (location != null) {
      output["location"] = location;
    }
    if (maximum != null) {
      output["maximum"] = maximum;
    }
    if (minimum != null) {
      output["minimum"] = minimum;
    }
    if (pattern != null) {
      output["pattern"] = pattern;
    }
    if (properties != null) {
      output["properties"] = properties.toJson();
    }
    if (readOnly != null) {
      output["readOnly"] = readOnly;
    }
    if (repeated != null) {
      output["repeated"] = repeated;
    }
    if (required != null) {
      output["required"] = required;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of JsonSchema */
  String toString() => JSON.stringify(this.toJson());

}

/** Additional information about this property. */
class JsonSchemaAnnotations {

  /** A list of methods for which this property is required on requests. */
  List<String> required;

  /** Create new JsonSchemaAnnotations from JSON data */
  JsonSchemaAnnotations.fromJson(Map json) {
    if (json.containsKey("required")) {
      required = [];
      json["required"].forEach((item) {
        required.add(item);
      });
    }
  }

  /** Create JSON Object for JsonSchemaAnnotations */
  Map toJson() {
    var output = new Map();

    if (required != null) {
      output["required"] = new List();
      required.forEach((item) {
        output["required"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of JsonSchemaAnnotations */
  String toString() => JSON.stringify(this.toJson());

}

/** If this is a schema for an object, list the schema for each property of this object. */
class JsonSchemaProperties {

  /** Create new JsonSchemaProperties from JSON data */
  JsonSchemaProperties.fromJson(Map json) {
  }

  /** Create JSON Object for JsonSchemaProperties */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of JsonSchemaProperties */
  String toString() => JSON.stringify(this.toJson());

}

class RestDescription {

  /** Authentication information. */
  RestDescriptionAuth auth;

  /** [DEPRECATED] The base path for REST requests. */
  String basePath;

  /** [DEPRECATED] The base URL for REST requests. */
  String baseUrl;

  /** The path for REST batch requests. */
  String batchPath;

  /** Indicates how the API name should be capitalized and split into various parts. Useful for generating pretty class names. */
  String canonicalName;

  /** The description of this API. */
  String description;

  /** Indicate the version of the Discovery API used to generate this doc. */
  String discoveryVersion;

  /** A link to human readable documentation for the API. */
  String documentationLink;

  /** The etag for this response. */
  String etag;

  /** A list of supported features for this API. */
  List<String> features;

  /** Links to 16x16 and 32x32 icons representing the API. */
  RestDescriptionIcons icons;

  /** The id of this API. */
  String id;

  /** The kind for this response. */
  String kind;

  /** Labels for the status of this API, such as labs or deprecated. */
  List<String> labels;

  /** API-level methods for this API. */
  RestDescriptionMethods methods;

  /** The name of this API. */
  String name;

  /** Common parameters that apply across all apis. */
  RestDescriptionParameters parameters;

  /** The protocol described by this document. */
  String protocol;

  /** The resources in this API. */
  RestDescriptionResources resources;

  /** The version of this API. */
  String revision;

  /** The root url under which all API services live. */
  String rootUrl;

  /** The schemas for this API. */
  RestDescriptionSchemas schemas;

  /** The base path for all REST requests. */
  String servicePath;

  /** The title of this API. */
  String title;

  /** The version of this API. */
  String version;

  /** Create new RestDescription from JSON data */
  RestDescription.fromJson(Map json) {
    if (json.containsKey("auth")) {
      auth = new RestDescriptionAuth.fromJson(json["auth"]);
    }
    if (json.containsKey("basePath")) {
      basePath = json["basePath"];
    }
    if (json.containsKey("baseUrl")) {
      baseUrl = json["baseUrl"];
    }
    if (json.containsKey("batchPath")) {
      batchPath = json["batchPath"];
    }
    if (json.containsKey("canonicalName")) {
      canonicalName = json["canonicalName"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("discoveryVersion")) {
      discoveryVersion = json["discoveryVersion"];
    }
    if (json.containsKey("documentationLink")) {
      documentationLink = json["documentationLink"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("features")) {
      features = [];
      json["features"].forEach((item) {
        features.add(item);
      });
    }
    if (json.containsKey("icons")) {
      icons = new RestDescriptionIcons.fromJson(json["icons"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("labels")) {
      labels = [];
      json["labels"].forEach((item) {
        labels.add(item);
      });
    }
    if (json.containsKey("methods")) {
      methods = new RestDescriptionMethods.fromJson(json["methods"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("parameters")) {
      parameters = new RestDescriptionParameters.fromJson(json["parameters"]);
    }
    if (json.containsKey("protocol")) {
      protocol = json["protocol"];
    }
    if (json.containsKey("resources")) {
      resources = new RestDescriptionResources.fromJson(json["resources"]);
    }
    if (json.containsKey("revision")) {
      revision = json["revision"];
    }
    if (json.containsKey("rootUrl")) {
      rootUrl = json["rootUrl"];
    }
    if (json.containsKey("schemas")) {
      schemas = new RestDescriptionSchemas.fromJson(json["schemas"]);
    }
    if (json.containsKey("servicePath")) {
      servicePath = json["servicePath"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
  }

  /** Create JSON Object for RestDescription */
  Map toJson() {
    var output = new Map();

    if (auth != null) {
      output["auth"] = auth.toJson();
    }
    if (basePath != null) {
      output["basePath"] = basePath;
    }
    if (baseUrl != null) {
      output["baseUrl"] = baseUrl;
    }
    if (batchPath != null) {
      output["batchPath"] = batchPath;
    }
    if (canonicalName != null) {
      output["canonicalName"] = canonicalName;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (discoveryVersion != null) {
      output["discoveryVersion"] = discoveryVersion;
    }
    if (documentationLink != null) {
      output["documentationLink"] = documentationLink;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (features != null) {
      output["features"] = new List();
      features.forEach((item) {
        output["features"].add(item);
      });
    }
    if (icons != null) {
      output["icons"] = icons.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (labels != null) {
      output["labels"] = new List();
      labels.forEach((item) {
        output["labels"].add(item);
      });
    }
    if (methods != null) {
      output["methods"] = methods.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (parameters != null) {
      output["parameters"] = parameters.toJson();
    }
    if (protocol != null) {
      output["protocol"] = protocol;
    }
    if (resources != null) {
      output["resources"] = resources.toJson();
    }
    if (revision != null) {
      output["revision"] = revision;
    }
    if (rootUrl != null) {
      output["rootUrl"] = rootUrl;
    }
    if (schemas != null) {
      output["schemas"] = schemas.toJson();
    }
    if (servicePath != null) {
      output["servicePath"] = servicePath;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (version != null) {
      output["version"] = version;
    }

    return output;
  }

  /** Return String representation of RestDescription */
  String toString() => JSON.stringify(this.toJson());

}

/** Links to 16x16 and 32x32 icons representing the API. */
class RestDescriptionIcons {

  /** The url of the 16x16 icon. */
  String x16;

  /** The url of the 32x32 icon. */
  String x32;

  /** Create new RestDescriptionIcons from JSON data */
  RestDescriptionIcons.fromJson(Map json) {
    if (json.containsKey("x16")) {
      x16 = json["x16"];
    }
    if (json.containsKey("x32")) {
      x32 = json["x32"];
    }
  }

  /** Create JSON Object for RestDescriptionIcons */
  Map toJson() {
    var output = new Map();

    if (x16 != null) {
      output["x16"] = x16;
    }
    if (x32 != null) {
      output["x32"] = x32;
    }

    return output;
  }

  /** Return String representation of RestDescriptionIcons */
  String toString() => JSON.stringify(this.toJson());

}

/** The resources in this API. */
class RestDescriptionResources {

  /** Create new RestDescriptionResources from JSON data */
  RestDescriptionResources.fromJson(Map json) {
  }

  /** Create JSON Object for RestDescriptionResources */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of RestDescriptionResources */
  String toString() => JSON.stringify(this.toJson());

}

/** Authentication information. */
class RestDescriptionAuth {

  /** OAuth 2.0 authentication information. */
  RestDescriptionAuthOauth2 oauth2;

  /** Create new RestDescriptionAuth from JSON data */
  RestDescriptionAuth.fromJson(Map json) {
    if (json.containsKey("oauth2")) {
      oauth2 = new RestDescriptionAuthOauth2.fromJson(json["oauth2"]);
    }
  }

  /** Create JSON Object for RestDescriptionAuth */
  Map toJson() {
    var output = new Map();

    if (oauth2 != null) {
      output["oauth2"] = oauth2.toJson();
    }

    return output;
  }

  /** Return String representation of RestDescriptionAuth */
  String toString() => JSON.stringify(this.toJson());

}

/** OAuth 2.0 authentication information. */
class RestDescriptionAuthOauth2 {

  /** Available OAuth 2.0 scopes. */
  RestDescriptionAuthOauth2Scopes scopes;

  /** Create new RestDescriptionAuthOauth2 from JSON data */
  RestDescriptionAuthOauth2.fromJson(Map json) {
    if (json.containsKey("scopes")) {
      scopes = new RestDescriptionAuthOauth2Scopes.fromJson(json["scopes"]);
    }
  }

  /** Create JSON Object for RestDescriptionAuthOauth2 */
  Map toJson() {
    var output = new Map();

    if (scopes != null) {
      output["scopes"] = scopes.toJson();
    }

    return output;
  }

  /** Return String representation of RestDescriptionAuthOauth2 */
  String toString() => JSON.stringify(this.toJson());

}

/** Available OAuth 2.0 scopes. */
class RestDescriptionAuthOauth2Scopes {

  /** Create new RestDescriptionAuthOauth2Scopes from JSON data */
  RestDescriptionAuthOauth2Scopes.fromJson(Map json) {
  }

  /** Create JSON Object for RestDescriptionAuthOauth2Scopes */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of RestDescriptionAuthOauth2Scopes */
  String toString() => JSON.stringify(this.toJson());

}

/** API-level methods for this API. */
class RestDescriptionMethods {

  /** Create new RestDescriptionMethods from JSON data */
  RestDescriptionMethods.fromJson(Map json) {
  }

  /** Create JSON Object for RestDescriptionMethods */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of RestDescriptionMethods */
  String toString() => JSON.stringify(this.toJson());

}

/** Common parameters that apply across all apis. */
class RestDescriptionParameters {

  /** Create new RestDescriptionParameters from JSON data */
  RestDescriptionParameters.fromJson(Map json) {
  }

  /** Create JSON Object for RestDescriptionParameters */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of RestDescriptionParameters */
  String toString() => JSON.stringify(this.toJson());

}

/** The schemas for this API. */
class RestDescriptionSchemas {

  /** Create new RestDescriptionSchemas from JSON data */
  RestDescriptionSchemas.fromJson(Map json) {
  }

  /** Create JSON Object for RestDescriptionSchemas */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of RestDescriptionSchemas */
  String toString() => JSON.stringify(this.toJson());

}

class RestMethod {

  /** Description of this method. */
  String description;

  /** HTTP method used by this method. */
  String httpMethod;

  /** A unique ID for this method. This property can be used to match methods between different versions of Discovery. */
  String id;

  /** Media upload parameters. */
  RestMethodMediaUpload mediaUpload;

  /** Ordered list of required parameters, serves as a hint to clients on how to structure their method signatures. The array is ordered such that the "most-significant" parameter appears first. */
  List<String> parameterOrder;

  /** Details for all parameters in this method. */
  RestMethodParameters parameters;

  /** The URI path of this REST method. Should be used in conjunction with the basePath property at the api-level. */
  String path;

  /** The schema for the request. */
  RestMethodRequest request;

  /** The schema for the response. */
  RestMethodResponse response;

  /** OAuth 2.0 scopes applicable to this method. */
  List<String> scopes;

  /** Whether this method supports media downloads. */
  bool supportsMediaDownload;

  /** Whether this method supports media uploads. */
  bool supportsMediaUpload;

  /** Whether this method supports subscriptions. */
  bool supportsSubscription;

  /** Create new RestMethod from JSON data */
  RestMethod.fromJson(Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("httpMethod")) {
      httpMethod = json["httpMethod"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("mediaUpload")) {
      mediaUpload = new RestMethodMediaUpload.fromJson(json["mediaUpload"]);
    }
    if (json.containsKey("parameterOrder")) {
      parameterOrder = [];
      json["parameterOrder"].forEach((item) {
        parameterOrder.add(item);
      });
    }
    if (json.containsKey("parameters")) {
      parameters = new RestMethodParameters.fromJson(json["parameters"]);
    }
    if (json.containsKey("path")) {
      path = json["path"];
    }
    if (json.containsKey("request")) {
      request = new RestMethodRequest.fromJson(json["request"]);
    }
    if (json.containsKey("response")) {
      response = new RestMethodResponse.fromJson(json["response"]);
    }
    if (json.containsKey("scopes")) {
      scopes = [];
      json["scopes"].forEach((item) {
        scopes.add(item);
      });
    }
    if (json.containsKey("supportsMediaDownload")) {
      supportsMediaDownload = json["supportsMediaDownload"];
    }
    if (json.containsKey("supportsMediaUpload")) {
      supportsMediaUpload = json["supportsMediaUpload"];
    }
    if (json.containsKey("supportsSubscription")) {
      supportsSubscription = json["supportsSubscription"];
    }
  }

  /** Create JSON Object for RestMethod */
  Map toJson() {
    var output = new Map();

    if (description != null) {
      output["description"] = description;
    }
    if (httpMethod != null) {
      output["httpMethod"] = httpMethod;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (mediaUpload != null) {
      output["mediaUpload"] = mediaUpload.toJson();
    }
    if (parameterOrder != null) {
      output["parameterOrder"] = new List();
      parameterOrder.forEach((item) {
        output["parameterOrder"].add(item);
      });
    }
    if (parameters != null) {
      output["parameters"] = parameters.toJson();
    }
    if (path != null) {
      output["path"] = path;
    }
    if (request != null) {
      output["request"] = request.toJson();
    }
    if (response != null) {
      output["response"] = response.toJson();
    }
    if (scopes != null) {
      output["scopes"] = new List();
      scopes.forEach((item) {
        output["scopes"].add(item);
      });
    }
    if (supportsMediaDownload != null) {
      output["supportsMediaDownload"] = supportsMediaDownload;
    }
    if (supportsMediaUpload != null) {
      output["supportsMediaUpload"] = supportsMediaUpload;
    }
    if (supportsSubscription != null) {
      output["supportsSubscription"] = supportsSubscription;
    }

    return output;
  }

  /** Return String representation of RestMethod */
  String toString() => JSON.stringify(this.toJson());

}

/** Media upload parameters. */
class RestMethodMediaUpload {

  /** MIME Media Ranges for acceptable media uploads to this method. */
  List<String> accept;

  /** Maximum size of a media upload, such as "1MB", "2GB" or "3TB". */
  String maxSize;

  /** Supported upload protocols. */
  RestMethodMediaUploadProtocols protocols;

  /** Create new RestMethodMediaUpload from JSON data */
  RestMethodMediaUpload.fromJson(Map json) {
    if (json.containsKey("accept")) {
      accept = [];
      json["accept"].forEach((item) {
        accept.add(item);
      });
    }
    if (json.containsKey("maxSize")) {
      maxSize = json["maxSize"];
    }
    if (json.containsKey("protocols")) {
      protocols = new RestMethodMediaUploadProtocols.fromJson(json["protocols"]);
    }
  }

  /** Create JSON Object for RestMethodMediaUpload */
  Map toJson() {
    var output = new Map();

    if (accept != null) {
      output["accept"] = new List();
      accept.forEach((item) {
        output["accept"].add(item);
      });
    }
    if (maxSize != null) {
      output["maxSize"] = maxSize;
    }
    if (protocols != null) {
      output["protocols"] = protocols.toJson();
    }

    return output;
  }

  /** Return String representation of RestMethodMediaUpload */
  String toString() => JSON.stringify(this.toJson());

}

/** Supported upload protocols. */
class RestMethodMediaUploadProtocols {

  /** Supports the Resumable Media Upload protocol. */
  RestMethodMediaUploadProtocolsResumable resumable;

  /** Supports uploading as a single HTTP request. */
  RestMethodMediaUploadProtocolsSimple simple;

  /** Create new RestMethodMediaUploadProtocols from JSON data */
  RestMethodMediaUploadProtocols.fromJson(Map json) {
    if (json.containsKey("resumable")) {
      resumable = new RestMethodMediaUploadProtocolsResumable.fromJson(json["resumable"]);
    }
    if (json.containsKey("simple")) {
      simple = new RestMethodMediaUploadProtocolsSimple.fromJson(json["simple"]);
    }
  }

  /** Create JSON Object for RestMethodMediaUploadProtocols */
  Map toJson() {
    var output = new Map();

    if (resumable != null) {
      output["resumable"] = resumable.toJson();
    }
    if (simple != null) {
      output["simple"] = simple.toJson();
    }

    return output;
  }

  /** Return String representation of RestMethodMediaUploadProtocols */
  String toString() => JSON.stringify(this.toJson());

}

/** Supports uploading as a single HTTP request. */
class RestMethodMediaUploadProtocolsSimple {

  /** True if this endpoint supports upload multipart media. */
  bool multipart;

  /** The URI path to be used for upload. Should be used in conjunction with the basePath property at the api-level. */
  String path;

  /** Create new RestMethodMediaUploadProtocolsSimple from JSON data */
  RestMethodMediaUploadProtocolsSimple.fromJson(Map json) {
    if (json.containsKey("multipart")) {
      multipart = json["multipart"];
    }
    if (json.containsKey("path")) {
      path = json["path"];
    }
  }

  /** Create JSON Object for RestMethodMediaUploadProtocolsSimple */
  Map toJson() {
    var output = new Map();

    if (multipart != null) {
      output["multipart"] = multipart;
    }
    if (path != null) {
      output["path"] = path;
    }

    return output;
  }

  /** Return String representation of RestMethodMediaUploadProtocolsSimple */
  String toString() => JSON.stringify(this.toJson());

}

/** Supports the Resumable Media Upload protocol. */
class RestMethodMediaUploadProtocolsResumable {

  /** True if this endpoint supports uploading multipart media. */
  bool multipart;

  /** The URI path to be used for upload. Should be used in conjunction with the basePath property at the api-level. */
  String path;

  /** Create new RestMethodMediaUploadProtocolsResumable from JSON data */
  RestMethodMediaUploadProtocolsResumable.fromJson(Map json) {
    if (json.containsKey("multipart")) {
      multipart = json["multipart"];
    }
    if (json.containsKey("path")) {
      path = json["path"];
    }
  }

  /** Create JSON Object for RestMethodMediaUploadProtocolsResumable */
  Map toJson() {
    var output = new Map();

    if (multipart != null) {
      output["multipart"] = multipart;
    }
    if (path != null) {
      output["path"] = path;
    }

    return output;
  }

  /** Return String representation of RestMethodMediaUploadProtocolsResumable */
  String toString() => JSON.stringify(this.toJson());

}

/** The schema for the request. */
class RestMethodRequest {

  /** Schema ID for the request schema. */
  String $ref;

  /** Create new RestMethodRequest from JSON data */
  RestMethodRequest.fromJson(Map json) {
    if (json.containsKey("$ref")) {
      $ref = json["$ref"];
    }
  }

  /** Create JSON Object for RestMethodRequest */
  Map toJson() {
    var output = new Map();

    if ($ref != null) {
      output["$ref"] = $ref;
    }

    return output;
  }

  /** Return String representation of RestMethodRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Details for all parameters in this method. */
class RestMethodParameters {

  /** Create new RestMethodParameters from JSON data */
  RestMethodParameters.fromJson(Map json) {
  }

  /** Create JSON Object for RestMethodParameters */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of RestMethodParameters */
  String toString() => JSON.stringify(this.toJson());

}

/** The schema for the response. */
class RestMethodResponse {

  /** Schema ID for the response schema. */
  String $ref;

  /** Create new RestMethodResponse from JSON data */
  RestMethodResponse.fromJson(Map json) {
    if (json.containsKey("$ref")) {
      $ref = json["$ref"];
    }
  }

  /** Create JSON Object for RestMethodResponse */
  Map toJson() {
    var output = new Map();

    if ($ref != null) {
      output["$ref"] = $ref;
    }

    return output;
  }

  /** Return String representation of RestMethodResponse */
  String toString() => JSON.stringify(this.toJson());

}

class RestResource {

  /** Methods on this resource. */
  RestResourceMethods methods;

  /** Sub-resources on this resource. */
  RestResourceResources resources;

  /** Create new RestResource from JSON data */
  RestResource.fromJson(Map json) {
    if (json.containsKey("methods")) {
      methods = new RestResourceMethods.fromJson(json["methods"]);
    }
    if (json.containsKey("resources")) {
      resources = new RestResourceResources.fromJson(json["resources"]);
    }
  }

  /** Create JSON Object for RestResource */
  Map toJson() {
    var output = new Map();

    if (methods != null) {
      output["methods"] = methods.toJson();
    }
    if (resources != null) {
      output["resources"] = resources.toJson();
    }

    return output;
  }

  /** Return String representation of RestResource */
  String toString() => JSON.stringify(this.toJson());

}

/** Sub-resources on this resource. */
class RestResourceResources {

  /** Create new RestResourceResources from JSON data */
  RestResourceResources.fromJson(Map json) {
  }

  /** Create JSON Object for RestResourceResources */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of RestResourceResources */
  String toString() => JSON.stringify(this.toJson());

}

/** Methods on this resource. */
class RestResourceMethods {

  /** Create new RestResourceMethods from JSON data */
  RestResourceMethods.fromJson(Map json) {
  }

  /** Create JSON Object for RestResourceMethods */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of RestResourceMethods */
  String toString() => JSON.stringify(this.toJson());

}

