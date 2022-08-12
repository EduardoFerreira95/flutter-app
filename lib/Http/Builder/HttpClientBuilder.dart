// ignore_for_file: prefer_void_to_null
// ignore: file_names
import 'package:http/http.dart' as http;
import 'package:app/Http/Utils/jsonParse.dart';
import 'HttpClientBuilderModel.dart';
  
Uri makeBaseURL(String path) => Uri.https('https://62f59b3c612c13062b3e4eae.mockapi.io/', path);

class HttpClientBuilder extends HttpClientBuilderModel {
  @override
  Future<HttpResponse<Null>> makePostCall<T extends dynamic>(String endpoint, T? body) async {
   var response = await http.post(makeBaseURL(endpoint), body: body);

   return HttpResponse(null, response.statusCode);
  }
  @override
  Future<HttpResponse<Null>> makePutCall<T extends dynamic>(String endpoint, T? body) async {
    var response = await http.put(makeBaseURL(endpoint), body: body);
    
    return HttpResponse(null, response.statusCode);
  }

  @override 
  Future<HttpResponse<Null>> makeDeleteCall<T extends dynamic>(String endpoint, T? body) async {
    var response = await http.delete(makeBaseURL(endpoint), body: body);

    return HttpResponse(null, response.statusCode);
  }

  @override
  Future<HttpResponse<T>> makeGetCall<T extends dynamic>(String endpoint) async {
    var response = await http.get(makeBaseURL(endpoint));
    
    return HttpResponse(jsonParse<T>(response.body), response.statusCode);
  }
}
final httpClient = HttpClientBuilder();