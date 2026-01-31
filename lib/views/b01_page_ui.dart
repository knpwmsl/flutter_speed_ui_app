import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b03_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class B01PageUi extends StatefulWidget {
  const B01PageUi({super.key});

  @override
  State<B01PageUi> createState() => _B01PageUiState();
}

class _B01PageUiState extends State<B01PageUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 29,
              color: Colors.black54,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Color(0xFFFFFFFF),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo_b01.png',
                width: 380,
                height: 380,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Discover Your ',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w900,
                  fontStyle: GoogleFonts.poppins().fontStyle,
                  color: Color(0xFF1F41BB), // 1F41BB
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Dream Job here',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  fontStyle: GoogleFonts.poppins().fontStyle,
                  color: Color(0xFF1F41BB), // 1F41BB
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Explore all the existing job roles based on your',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: GoogleFonts.poppins().fontStyle,
                  color: Colors.black54,
                ),
              ),
              Text(
                'interest and study major.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontStyle: GoogleFonts.poppins().fontStyle,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const B02PageUi())),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1F41BB),
                      minimumSize: Size(170, 70),
                      side: BorderSide(
                        color: Color(0xFF1F41BB),
                        width: 0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: GoogleFonts.poppins().fontStyle,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const B03PageUi())),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(170, 70),
                      side: BorderSide(
                        color: Color(0xffF3F3F3),
                        width: 0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: GoogleFonts.poppins().fontStyle,
                        color: Color(0xFF1F41BB),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
