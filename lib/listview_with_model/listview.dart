<<<<<<< HEAD
//single file to show listview with data model abudullahMansour
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  List<UserModel> listUser = [
    const UserModel(id: 1, name: 'aya osama', phone: "+2001116276123"),
    const UserModel(id: 2, name: 'fathey', phone: "+2001116276123"),
    const UserModel(id: 3, name: 'abdullah mansour', phone: "+2001116276123"),
    const UserModel(id: 4, name: 'aya osama', phone: "+2001116276123"),
    const UserModel(id: 5, name: 'aya osama', phone: "+2001116276123"),
    const UserModel(id: 6, name: 'aya fathey', phone: "+2001116276123"),
    const UserModel(id: 7, name: 'aya osama', phone: "+2001116276123"),
    const UserModel(id: 8, name: 'fathey osama', phone: "+2001116276123"),
    const UserModel(id: 9, name: 'aya osama', phone: "+2001116276123"),
  ];

  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('user'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => buildItem(listUser[index]),
            separatorBuilder: (context, index) => const Divider(
                  height: 2,
                  color: Colors.grey,
                ),
            itemCount: listUser.length));
  }

// every item in the badge
  Widget buildItem(UserModel a) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blueAccent,
            child: Text('${a.id}'),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                a.name,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                a.phone,
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//from database
class UserModel {
  //atributes
  final int id;
  final String name;
  final String phone;
  //constractor
  const UserModel({required this.id, required this.name, required this.phone});
}
=======
//single file to show listview with data model abudullahMansour
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  List<UserModel> listUser = [
    const UserModel(id: 1, name: 'aya osama', phone: "+2001116276123"),
    const UserModel(id: 2, name: 'fathey', phone: "+2001116276123"),
    const UserModel(id: 3, name: 'abdullah mansour', phone: "+2001116276123"),
    const UserModel(id: 4, name: 'aya osama', phone: "+2001116276123"),
    const UserModel(id: 5, name: 'aya osama', phone: "+2001116276123"),
    const UserModel(id: 6, name: 'aya fathey', phone: "+2001116276123"),
    const UserModel(id: 7, name: 'aya osama', phone: "+2001116276123"),
    const UserModel(id: 8, name: 'fathey osama', phone: "+2001116276123"),
    const UserModel(id: 9, name: 'aya osama', phone: "+2001116276123"),
  ];

  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('user'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => buildItem(listUser[index]),
            separatorBuilder: (context, index) => const Divider(
                  height: 2,
                  color: Colors.grey,
                ),
            itemCount: listUser.length));
  }

// every item in the badge
  Widget buildItem(UserModel a) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blueAccent,
            child: Text('${a.id}'),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                a.name,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                a.phone,
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//from database
class UserModel {
  //atributes
  final int id;
  final String name;
  final String phone;
  //constractor
  const UserModel({required this.id, required this.name, required this.phone});
}
>>>>>>> 4a81d8ea71b946ff9ec7163af3c4549d5ffef062
