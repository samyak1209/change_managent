import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Resource<T> {
  final String url;
  T Function(Response response) parse;
  Map<String, dynamic> body;
  Map<String, dynamic> headers;

  Resource({this.url, this.parse, this.body, this.headers});
}

class MyService {
  get(Resource resource) async {
    http.Response response;
    try {
      print("service get");
      // Future.delayed(Duration(seconds: 10)).then((onValue) {
      //   print("10 seconds since ${resource.url}");
      // });
      response = await http.get(resource.url).timeout(Duration(seconds: 30));
    } catch (exception) {
      print(resource.url + exception.toString());
      throw Exception("Exception caught");
    }
    if (response.statusCode == 200) {
      return resource.parse(response);
    } else {
      throw Exception('Failed to load data!');
    }
  }

  post(Resource resource) async {
    http.Response response;
    try {
      print("service post");

      response = await http.post(resource.url,
          body: resource.body, headers: resource.headers);
    } catch (exception) {
      print(exception.toString());
      throw Exception("Exception caught");
    }
    if (response.statusCode == 200) {
      return resource.parse(response);
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
