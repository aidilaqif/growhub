import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _aboutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
// Change profile picture logic here and for firebase
              },
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(0.5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 4)),
                      child: const CircleAvatar(
                        maxRadius: 65,
                        backgroundImage: AssetImage("assets/images/samad.jpg"),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 130,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _aboutController,
              decoration: const InputDecoration(
                  labelText: 'About',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              maxLines: 3,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save button action
                String name = _nameController.text;
                String about = _aboutController.text;

                // Handle saving logic here
                // For example, you can save the data to a database

                // After saving, you might want to navigate back
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
