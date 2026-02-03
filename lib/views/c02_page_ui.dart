import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/c03_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class C02PageUi extends StatefulWidget {
  const C02PageUi({super.key});

  @override
  State<C02PageUi> createState() => _C02PageUiState();
}

class _C02PageUiState extends State<C02PageUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        extendBodyBehindAppBar: true,
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
              SizedBox(
                height: 130,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF34A751),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/icon/App_c_logo.png',
                  width: 50,
                  height: 50,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'Sign in your account',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
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
              SizedBox(
                height: 10,
              ),
              Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'ex: jon.smith@email.com',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 145, 145, 145),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
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
              SizedBox(
                height: 10,
              ),
              Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '*********',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 145, 145, 145),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Color(0xFF00B140),
                  minimumSize: Size(320, 60),
                  foregroundColor: Colors.white,
                  textStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                child: Text('Sign in'),
              ),
              SizedBox(
                height: 40,
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
                height: 30,
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
                    width: 20,
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
                    width: 20,
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
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t have an account? ',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 145, 145, 145),
                            ),
                          ),
                          TextSpan(
                            text: 'SIGN UP',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF00B140),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => C03PageUi(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    )
                  
              ),
            ],
          ),
        ),
      ),
    );
  }
}
