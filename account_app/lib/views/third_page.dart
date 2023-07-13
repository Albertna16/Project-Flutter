import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatefulWidget {
  final List<Map<String, dynamic>> selectedUsers;

  const ThirdPage(this.selectedUsers, {Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  List<dynamic> usersData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://reqres.in/api/users?page=1&per_page=10'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        usersData = data['data'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "Third Screen",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: usersData.length,
        itemBuilder: (context, index) {
          final user = usersData[index];
          return ListTile(
            onTap: () {
              final userData = {
                'avatar': user['avatar'],
                'first_name': user['first_name'],
                'last_name': user['last_name'],
                'email': user['email'],
              };
              if (!widget.selectedUsers.contains(userData)) {
                Navigator.pop(context, userData);
              }
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user['avatar']),
            ),
            title: Text("${user['first_name']} ${user['last_name']}", style: GoogleFonts.poppins(),),
            subtitle: Text(user['email'], style: GoogleFonts.poppins(),),
          );
        },
      ),
    );
  }
}
