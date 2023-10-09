import 'package:dio/dio.dart';

class Contact {
  int? id;
  String? name;
  String? phone;

  Contact({this.id, this.name, this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
    );
  }
}

Dio _dio = Dio();

Future<void> postUser() async {
  try {
    Response response = await _dio.post(
      'https://reqres.in/api/users',
      data: {
        'name': 'John Doe',
        'phone': '123456789',
      },
    );
    print(response.data);
  } catch (e) {
    rethrow;
  }
}

Future<void> toJson() async {
  try {
    Response response = await _dio.get(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
    );
    Contact contact = Contact.fromJson(response.data);
    print('ID: ${contact.id}, Name: ${contact.name}, Phone: ${contact.phone}');
  } catch (e) {
    rethrow;
  }
}

Future<void> updateUsers() async {
  try {
    Response response = await _dio.put(
      'https://jsonplaceholder.typicode.com/posts/1',
      data: {
        'id': '1',
        'title': 'foo',
        'body': 'bar',
        'userId': '1',
      },
    );
    print(response.data);
  } catch (e) {
    rethrow;
  }
}
