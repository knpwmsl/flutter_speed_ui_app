import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a01_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class A02PageUi extends StatefulWidget {
  const A02PageUi({super.key});

  @override
  State<A02PageUi> createState() => _A02PageUiState();
}

class _A02PageUiState extends State<A02PageUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF), // สีต้องตรงกับ Container ด้านล่าง
          elevation: 0, // ลบเงาใต้ AppBar ออกเพื่อให้
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
                height: 30,
              ),
              Text(
                'Welcome Back',
                style: GoogleFonts.outfit(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff464444)),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing',
                style:
                    GoogleFonts.outfit(fontSize: 14, color: Color(0xff464444)),
              ),
              Text(
                'elit. Diam maecenas mi non sed ut odio. Non, justo,',
                style:
                    GoogleFonts.outfit(fontSize: 14, color: Color(0xff464444)),
              ),
              Text(
                'sed facilisi et.',
                style:
                    GoogleFonts.outfit(fontSize: 14, color: Color(0xff464444)),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 26.0,
                      horizontal: 15.0,
                    ),
                    hintText: 'Username,Email&Phone Number',
                    hintStyle: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff666161),
                    ),
                    filled: true,
                    fillColor: Color(0xffF3F3F3),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 26.0,
                      horizontal: 15.0,
                    ),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff666161),
                    ),
                    filled: true,
                    fillColor: Color(0xffF3F3F3),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password        ',
                    style: GoogleFonts.outfit(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2D2626),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Color(0xffF89AEE),
                  minimumSize: Size(380, 75),
                  foregroundColor: Colors.white,
                  textStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
                child: Text('Sign in'),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const A01PageUi())),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: Container(
                      height: 2, // ความหนาของเส้น
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink
                                .withOpacity(0.0), // เริ่มจากใส (ซ้ายสุด)
                            Colors.pink, // ไปหาเข้ม (ติดตัวหนังสือ)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or Sign up With',
                      style: GoogleFonts.outfit(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff464444),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 2, // ความหนาของเส้น
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink, // เริ่มจากเข้ม (ติดตัวหนังสือ)
                            Colors.pink.withOpacity(0.0), // ไปหาใส (ขวาสุด)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // ใส่คำสั่งเมื่อกดปุ่มตรงนี้
                    },
                    child: Container(
                      width: 50, // กำหนดขนาดปุ่ม
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(
                            0xffECE9EC), // 1. สีพื้นหลังวงกลม (สีเทาอมม่วงอ่อนๆ ตามภาพ)
                        shape: BoxShape.circle, // 2. กำหนดรูปทรงเป็นวงกลม
                        border: Border.all(
                          color: Color(0xffF89AEE), // 3. สีขอบ (สีชมพู)
                          width: 1.0, // ความหนาของขอบ
                        ),
                      ),
                      child: Image.asset(
                        'assets/icon/google_logo.png',
                        width: 50, // กำหนดขนาดรูปภาพ
                        height: 50, // กำหนดขนาดรูปภาพ
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      // ใส่คำสั่งเมื่อกดปุ่มตรงนี้
                    },
                    child: Container(
                      width: 50, // กำหนดขนาดปุ่ม
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(
                            0xffECE9EC), // 1. สีพื้นหลังวงกลม (สีเทาอมม่วงอ่อนๆ ตามภาพ)
                        shape: BoxShape.circle, // 2. กำหนดรูปทรงเป็นวงกลม
                        border: Border.all(
                          color: Color(0xffF89AEE), // 3. สีขอบ (สีชมพู)
                          width: 1.0, // ความหนาของขอบ
                        ),
                      ),
                      child: Image.asset(
                        'assets/icon/Facebook_logo.png',
                        width: 50, // กำหนดขนาดรูปภาพ
                        height: 50, // กำหนดขนาดรูปภาพ
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      // ใส่คำสั่งเมื่อกดปุ่มตรงนี้
                    },
                    child: Container(
                      width: 50, // กำหนดขนาดปุ่ม
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(
                            0xffECE9EC), // 1. สีพื้นหลังวงกลม (สีเทาอมม่วงอ่อนๆ ตามภาพ)
                        shape: BoxShape.circle, // 2. กำหนดรูปทรงเป็นวงกลม
                        border: Border.all(
                          color: Color(0xffF89AEE), // 3. สีขอบ (สีชมพู)
                          width: 1.0, // ความหนาของขอบ
                        ),
                      ),
                      child: Image.asset(
                        'assets/icon/Apple_logo.png',
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
