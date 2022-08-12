import 'dart:convert';

T jsonParse<T>(String jsonData) {
  var parsedJSON = json.decode(jsonData) as T;
  return parsedJSON;

}