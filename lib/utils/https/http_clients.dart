import 'package:http/http.dart' as http;
import 'dart:convert';

class THttpHelper{
  static const String _baseUrl = "https://your-api-base-url.com";  //replace api base url

  // helper method to mage Get request
  static Future<Map<String, dynamic>> get(String, endpoint)async{
    final response = await http.get(Uri.parse("$_baseUrl/$endpoint"));

    return _handleResponse(response);
  }

  // helper method to make a post request
  static Future<Map<String,dynamic>> post(String endpoint, dynamic data)async{
    final response = await http.post(Uri.parse("$_baseUrl/$endpoint"),
    headers: {"Content-Type":"Application/json"},
      body: json.encode(data)
    );
    return _handleResponse(response);
  }


  // helper method to make a put request
  static Future<Map<String,dynamic>> put(String endpoint, dynamic data)async{
    final response = await http.put(Uri.parse("$_baseUrl/$endpoint"),
      headers: {"Content-Type":"Application/json"},
      body: json.encode(data)
    );
    return _handleResponse(response);
  }


  // helper method to make delete request
  static Future<Map<String,dynamic>> delete(String, endpoint) async{
    final response = await http.delete(Uri.parse("$_baseUrl/$endpoint"));
    return _handleResponse(response);
  }


  // handle the http response
  static Map<String,dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return json.decode(response.body);
    }else{
      throw Exception("Failed the load data: ${response.statusCode}");
    }
  }

}