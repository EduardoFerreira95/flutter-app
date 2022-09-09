// ignore_for_file: prefer_void_to_null
// ignore: file_names
import 'package:http/http.dart' as http;
import 'package:app/Http/Utils/jsonParse.dart';
import 'HttpClientBuilderModel.dart';
  
Uri makeBaseURL(String path) => Uri.https('62f59b3c612c13062b3e4eae.mockapi.io', path);

class HttpClientBuilder extends HttpClientBuilderModel {
  @override
  Future<HttpResponse<dynamic>> makePostCall<T extends dynamic>(String endpoint, T? body) async {
   var response = await http.post(makeBaseURL(endpoint), body: body);

   return HttpResponse(null, response.statusCode);
  }
  @override
  Future<HttpResponse<dynamic>> makePutCall<T extends dynamic>(String endpoint, T? body) async {
    var response = await http.put(makeBaseURL(endpoint), body: body);
    
    return HttpResponse(null, response.statusCode);
  }

  @override 
  Future<HttpResponse<dynamic>> makeDeleteCall<T extends dynamic>(String endpoint, T? body) async {
    var response = await http.delete(makeBaseURL(endpoint), body: body);

    return HttpResponse(null, response.statusCode);
  }

  @override
  Future<HttpResponse<T>> makeGetCall<T>(String endpoint) async {
    var response = await http.get(makeBaseURL(endpoint));

    return HttpResponse(jsonParse(response.body) as T, response.statusCode);
  }
}
final httpClient = HttpClientBuilder();