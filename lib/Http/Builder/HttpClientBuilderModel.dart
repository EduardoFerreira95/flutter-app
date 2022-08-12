class HttpResponse<T> {
  late T data;
  late int statusCode;
  HttpResponse(this.data, this.statusCode);
}

abstract class HttpClientBuilderModel {
  Future<HttpResponse<Null>> makePostCall<T extends dynamic>(String endpoint, T? body);
  Future<HttpResponse<Null>> makePutCall<T extends dynamic>(String endpoint, T? body);
  Future<HttpResponse<Null>> makeDeleteCall<T extends dynamic>(String endpoint, T? body);
  Future<HttpResponse<T>> makeGetCall<T extends dynamic>(String endpoint);
}