import 'dart:convert';

T makeJSON<T>(String jsonData) {
  var parsedJSON = json.decode(jsonData) as T;
  return parsedJSON;

}