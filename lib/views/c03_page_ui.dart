import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/c02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class C03PageUi extends StatefulWidget {
  const C03PageUi({super.key});

  @override
  State<C03PageUi> createState() => _C03PageUiState();
}

class _C03PageUiState extends State<C03PageUi> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 29,
              color: Colors.black54,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15, left: 300),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF34A751),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset(
                  'assets/icon/App_c_logo.png',
                  width: 22,
                  height: 22,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'Create your account',
                style: GoogleFonts.poppins(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 15),
                  child: Text(
                    'Name',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 30, top: 15),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                    hintText: 'ex: jon smith',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 5),
                  child: Text(
                    'Email',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 30, top: 15),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                    hintText: 'ex: jon.smith@email.com',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 5),
                  child: Text(
                    'Password',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 30, top: 15),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                    hintText: '*********',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 5),
                  child: Text(
                    'Confirm Password',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 30, top: 15),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                    hintText: '*********',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 15),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF34A751)),
                            borderRadius: BorderRadius.circular(5),
                            color: isChecked
                                ? const Color(0xFF34A751)
                                : Colors.transparent,
                          ),
                          child: isChecked
                              ? const Icon(Icons.check,
                                  size: 15, color: Colors.white)
                              : null,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: RichText(
                            text: TextSpan(
                              text: 'I understood the ',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'terms & policy.',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF34A751),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF34A751),
                  minimumSize: Size(320, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'SIGN UP',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'or sign in with',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 145, 145, 145),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff4f4f4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Image.asset(
                        'assets/icon/Google_c_logo.png',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff4f4f4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Image.asset(
                        'assets/icon/Facebook_c_logo.png',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff4f4f4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Image.asset(
                        'assets/icon/Twitter_c_logo.png',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Have an account? ',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                    children: [
                      TextSpan(
                        text: 'SIGN IN',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF34A751),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => const C02PageUi()));
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
