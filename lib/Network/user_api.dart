import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store/models/Student.dart';
import '../models/user.dart';

class UserApi {
  Future<List<Student>> GetStudents() async {
    Uri url = Uri.https("api.mohamed-sadek.com", "/Student/get");

    var resp = await http.get(url);
    var data = jsonDecode(resp.body);
    var list = data["Data"] as List;
    return list
        .map((e) => Student(
            ID: e["ID"],
            NationalID: e["NationalID"],
            Age: e["Age"],
            Email: e["Email"],
            Name: e["Name"],
            Mobile: e["Mobile"]))
        .toList();
  }

  Future<http.Response> AddUser(User user) async {
    Uri addURL = Uri.https("api.mohamed-sadek.com", "/User/Post");
    // http.post(addURL, body: user).then((value) => print(value.statusCode)).onError((error, stackTrace) => null);
    Map<String, Object> data = {
      "Name": user.Name,
      "UserName": user.UserName,
      "Password": user.Password
    };
    return http.post(addURL,
        body: jsonEncode(<String, String>{
          "Name": user.Name,
          "UserName": user.UserName,
          "Password": user.Password
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
  }
}
