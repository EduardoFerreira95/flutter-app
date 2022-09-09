class HttpResponse<T> {
  late T data;
  late int statusCode;
  HttpResponse(this.data, this.statusCode);
}

abstract class HttpClientBuilderModel {
  Future<HttpResponse> makePostCall<T extends dynamic>(String endpoint, T? body);
  Future<HttpResponse> makePutCall<T extends dynamic>(String endpoint, T? body);
  Future<HttpResponse> makeDeleteCall<T extends dynamic>(String endpoint, T? body);
  Future<HttpResponse> makeGetCall<T extends dynamic>(String endpoint);
}