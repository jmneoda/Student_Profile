import 'package:flutter/material.dart';
 
class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F8),
      appBar: AppBar(
        title: const Text('Student Profile'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Profile avatar.
                const Center(
                  child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.indigo,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                 ),
         ),
 
                const SizedBox(height: 16),
 
                // Student name and course.
                const Text(
                  'John Mark Neoda',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
 
                const SizedBox(height: 8),
 
                const Text(
                  'BS Information Technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(217, 0, 0, 0),
                  ),
                ),
 
                const SizedBox(height: 24),
 
                // Student details.
                const Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.badge,
                          color: Colors.purple,
                        ),
                        title: Text('Student Number'),
                        subtitle: Text('2026-533687'),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(
                          Icons.school,
                          color: Colors.purple,
                        ),
                        title: Text('Year Level and Section'),
                        subtitle: Text('3rd Year - Section C'),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.purple,
                        ),
                        title: Text('Email Address'),
                        subtitle: Text('j.neoda.533687@umindanao.edu.ph'),
                      ),
                    ],
                  ),
                ),
 
                const SizedBox(height: 24),
 
                // Introduction.
                const Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
 
                const SizedBox(height: 8),
 
                const Text(
                  'I am JM an IT student who enjoys learning '
                  'about networking, databases, and data analysis. '
                  'My goal is to become a data analytics specialist or IT support that includes networking and database management.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
 
                const SizedBox(height: 24),
 
                // Hobbies.
                const Text(
                  'Hobbies and Interests',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
 
                const SizedBox(height: 8),
 
                const Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(label: Text('Sleeping')),
                    Chip(label: Text('Basketball')),
                    Chip(label: Text('Reading')),
                    Chip(label: Text('Eating')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}