import 'package:dio/dio.dart';

class Contact {
  final int id;
  final String name;
  final String phone;

  Contact({
    required this.id,
    required this.name,
    required this.phone,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'] as int,
      name: json['name'] as String,
      phone: json['phone'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
    };
  }
}

void main() {
  postUser();
  toJson();
  updateUser();
}

final Dio dio = Dio();
Future<void> postUser() async {
  try {
    final response = await dio.post(
      'https://reqres.in/api/users',
      data: {
        'name': 'Morpheus',
        'phone': '081360944846',
      },
    );
    print(response.data);
  } catch (e) {
    rethrow;
  }
}

Future<void> toJson() async {
  try {
    final response = await dio.get(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
    );
    Contact contact = Contact.fromJson(response.data);
    print('ID: ${contact.id}, Name: ${contact.name}, Phone: ${contact.phone}');
  } catch (e) {
    rethrow;
  }
}

Future<void> updateUser() async {
  try {
    final response = await dio.put(
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
