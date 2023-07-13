import 'package:account_app/views/third_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  final String name;

  const SecondPage({required this.name, Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Map<String, dynamic>> selectedUsers = [];

  void addUser(Map<String, dynamic> userData) {
    // final userName = "${userData['first_name']} ${userData['last_name']}";
    if (!selectedUsers.contains(userData)) {
      setState(() {
        selectedUsers.add(userData);
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
            "Second Screen",
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
      body: Container(
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(fontSize: 14),
              ),
            ),
            Text(
              widget.name ?? "",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF04021D),
                ),
              ),
            ),
            if (selectedUsers.isNotEmpty) ...[
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 430,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: selectedUsers.length,
                  itemBuilder: (context, index) {
                    final userData = selectedUsers[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(userData['avatar']),
                      ),
                      title: Text(
                        "${userData['first_name']} ${userData['last_name']}",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF04021D),
                          ),
                        ),
                      ),
                      subtitle: Text(
                        userData['email'],
                        style: GoogleFonts.poppins(),
                      ),
                    );
                  },
                ),
              ),
            ] else ...[
              const SizedBox(
                height: 200,
              ),
              Center(
                child: Text(
                  "Selected User Name",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: Color(0xFF04021D),
                    ),
                  ),
                ),
              ),
            ],
            const Spacer(),
            Center(
              child: InkWell(
                onTap: () async {
                  final userData = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThirdPage(selectedUsers)),
                  );
                  if (userData != null) {
                    addUser(userData);
                  }
                },
                child: Container(
                  height: 41,
                  width: 310,
                  decoration: BoxDecoration(
                    color: Color(0xFF2B637B),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Choose a User",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
