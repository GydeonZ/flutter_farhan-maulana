import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<User> users = [
    const User(
        name: 'Leanne Graham',
        phone: '1-770-736-8031 x56442',
        urlavatar:
            'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
    const User(
        name: 'Ervin Howell',
        phone: '010-629-6593 x09125',
        urlavatar:
            'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
    const User(
        name: 'Clementine Bauch',
        phone: '1-463-123-4447',
        urlavatar:
            'https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'),
    const User(
        name: 'Patricia Lebsack',
        phone: '493-170-9623 x156',
        urlavatar:
            'https://images.unsplash.com/photo-1515059810521-a1d411d8517f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60'),
    const User(
        name: 'Chelsey Dietrich',
        phone: '(254)954-1289',
        urlavatar:
            'https://plus.unsplash.com/premium_photo-1671305003832-a7ee00826651?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
    const User(
        name: 'Mrs. Dennis Schulist',
        phone: '1-477-935-8478 x6430',
        urlavatar:
            'https://images.unsplash.com/photo-1693746943957-b5d17f405ff4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80'),
    const User(
        name: 'Kurtis Weissnat',
        phone: '210.067.6132',
        urlavatar:
            'https://images.unsplash.com/photo-1673831379710-c9333c762b11?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1890&q=80'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialApp'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => debugPrint('Add'),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => debugPrint('Search'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(title: Text('Home Page')),
            ListTile(title: Text('About Page')),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(user.urlavatar),
                ),
                title: Text(user.name),
                subtitle: Text(user.phone),
                trailing: const Icon(Icons.arrow_forward),
              ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class User {
  final String name;
  final String phone;
  final String urlavatar;

  const User({
    required this.name,
    required this.phone,
    required this.urlavatar,
  });
}
