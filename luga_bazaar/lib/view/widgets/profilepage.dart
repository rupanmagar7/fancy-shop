import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePageWidget extends StatelessWidget {
  const ProfilePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      "https://images.pexels.com/photos/11471048/pexels-photo-11471048.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.purple,
            ),
            title: Text("Rupan Magar"),
          ),
          const ListTile(
            leading: Icon(
              Icons.cake,
              color: Colors.purple,
            ),
            title: Text("Birthday"),
          ),
          const ListTile(
            leading: Icon(
              Icons.phone_iphone_sharp,
              color: Colors.purple,
            ),
            title: Text("+977 9804309603"),
          ),
          const ListTile(
            leading: Icon(
              Icons.camera_alt_rounded,
              color: Colors.purple,
            ),
            title: Text("Instagram"),
          ),
          const ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.purple,
            ),
            title: Text("rupanmagar7@gmail.com"),
          ),
          const ListTile(
            leading: Icon(
              Icons.remove_red_eye,
              color: Colors.purple,
            ),
            title: Text("Password"),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Edit profile"))
        ],
      ),
    );
  }
}
