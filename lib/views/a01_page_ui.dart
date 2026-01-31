import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class A01PageUi extends StatefulWidget {
  const A01PageUi({super.key});

  @override
  State<A01PageUi> createState() => _A01PageUiState();
}

class _A01PageUiState extends State<A01PageUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF89AEE), // สีต้องตรงกับ Container ด้านล่าง
          elevation: 0, // ลบเงาใต้ AppBar ออกเพื่อให้ดูเรียบเนียน
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
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xffF89AEE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
                child: Image.asset(
                  'assets/images/logo_a01.png',
                ),
              ),
              SizedBox(height: 50,),
              Text(
                'Discover Your',
                style: GoogleFonts.outfit(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff464444)
                ),
              ),
              Text(
                'Own Dream House',
                style: GoogleFonts.outfit(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff464444)
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: GoogleFonts.outfit(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),
              Text(
                'Diam maecenas mi non sed ut odio. Non, justo, sed facilisi',
                style: GoogleFonts.outfit(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),
              Text(
                'et. Eget viverra urna, vestibulum egestas faucibus',
                style: GoogleFonts.outfit(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),
              Text(
                'egestas. Sagittis nam velit volutpat eu nunc.',
                style: GoogleFonts.outfit(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 2,
                      shadowColor: Color.fromARGB(255, 202, 202, 202),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),    // โค้งมุมบนซ้าย
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      side: BorderSide(width: 2, color: Color(0xffF89AEE)),
                      backgroundColor: Color(0xffF89AEE),
                      minimumSize: Size(200, 85),
                    ),
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.outfit(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)
                      ),
                    ),
                    onPressed: () {
                      // Action on button tap
                    },
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 2,
                      shadowColor: Color.fromARGB(255, 202, 202, 202),
                      side: BorderSide(width: 2, color: Color(0xffF3F3F3)),
                      backgroundColor: Color(0xffF3F3F3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),    // โค้งมุมบนขวา
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      minimumSize: Size(200, 85),
                    ),
                    child: Text(
                      'Register',
                      style: GoogleFonts.outfit(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff464444)
                      ),
                    ),
                    onPressed: () => Navigator.push(
                      context, 
                      MaterialPageRoute(
                      builder: (context) => const A02PageUi()
                      )
                    ),
                  )
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}