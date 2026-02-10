import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d03_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class D01PageUi extends StatelessWidget {
  const D01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
          ),
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/logo_d01.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 2. ส่วนเนื้อหาด้านล่าง - ใช้ Padding เฉพาะส่วนนี้
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Column(
                children: [
                  const SizedBox(height: 410),
                  // โลโก้วงกลมและชื่อแบรนด์
                  // 2. ส่วนโลโก้และชื่อแบรนด์
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon/App_d_logo.png', // โลโก้วงกลม
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(height: 10),

                        // ✅ แก้ไขตรงนี้: ใช้ Text.rich เพื่อผสมสไตล์ตัวอักษร
                        Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontSize: 28,
                              color: Color(0xFF263238),
                            ),
                            children: [
                              TextSpan(
                                text: 'Fruzz',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold), // ตัวหนา
                              ),
                              TextSpan(
                                text: 'digital',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal), // ตัวบาง
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ปุ่ม Login
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const D02PageUi())),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1E232C),
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // ปุ่ม Register
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const D03PageUi())),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        side: const BorderSide(color: Color(0xFF263238)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Register',
                        style:
                            TextStyle(color: Color(0xFF263238), fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // ลิงก์ Continue as a guest
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Continue as a guest',
                      style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF35C2C1),
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF35C2C1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
