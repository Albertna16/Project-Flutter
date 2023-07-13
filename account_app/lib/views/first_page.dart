import 'package:account_app/views/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController palindromeController = TextEditingController();
  bool isPalindrome = false;
  bool showPalindromeMessage = false;

  void checkPalindrome() {
    final String text =
        palindromeController.text.toLowerCase().replaceAll(' ', '');
    final String reversedText = text.split('').reversed.join('');
    setState(() {
      isPalindrome = text == reversedText;
      showPalindromeMessage = true;
    });
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        showPalindromeMessage = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 4, 222, 222),
              Color.fromARGB(255, 20, 48, 99),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 116,
                  width: 116,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: SvgPicture.asset(
                      "asset/icon/user.svg",
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 47,
                  width: 310,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Masukkan nama anda",
                          hintStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.grey),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 47,
                  width: 310,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        controller: palindromeController,
                        decoration: InputDecoration(
                          hintText: "Masukkan kalimat palindrom",
                          hintStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.grey),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Visibility(
                  visible: showPalindromeMessage,
                  child: Text(
                    isPalindrome
                        ? "TERMASUK KALIMAT PALINDROME"
                        : "TIDAK TERMASUK KALIMAT PALINDROME",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: isPalindrome ? Colors.lightGreen : Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      checkPalindrome();
                    },
                    child: Container(
                      height: 41,
                      width: 310,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2B637B),
                        border: Border.all(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "CHECK",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(
                            name: nameController.text,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 41,
                      width: 310,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2B637B),
                        border: Border.all(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "NEXT",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
