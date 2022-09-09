import 'dart:convert';

jsonParse(String jsonData) {
  var parsedJSON = json.decode(jsonData);
  return parsedJSON;
}