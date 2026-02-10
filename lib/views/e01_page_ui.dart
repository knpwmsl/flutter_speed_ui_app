import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class E01PageUi extends StatelessWidget {
  const E01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 70, // เพิ่มความกว้างเพื่อให้วงกลมไม่ชิดขอบเกินไป
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20), // ขยับปุ่มออกจากขอบจอเล็กน้อย
          child: Center(
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.1), // วงกลมสีขาวจางๆ
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new, 
                  color: Colors.white, // ไอคอนสีดำตามดีไซน์ E02
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // 1. ส่วนรูปภาพพร้อม "วงกลมเงา" ด้านล่าง
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // วงกลมเงาสีเทาจางๆ วางไว้ใต้รูป
                  Positioned(
                    bottom: 0, // ปรับตำแหน่งให้อยู่ใต้ฐานของรูปพอดี
                    child: Container(
                      width: MediaQuery.of(context).size.width *
                          0.2, // ขยายความกว้างให้เกินหน้าจอเล็กน้อยเพื่อให้ดูเป็นเงา
                      height:
                          20, // ปรับความสูงให้น้อยลงเพื่อให้ดูเป็นวงรี (Shadow)
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(0, 200)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 188, 187, 187)
                                .withOpacity(1),
                            blurRadius: 30,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // รูปภาพหลัก
                  Image.asset(
                    'assets/images/logo_e01.png',
                    width: MediaQuery.of(context).size.width * 0.85,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // 2. หัวข้อ BERRY JUICE
            Text(
              'BERRY JUICE',
              style: GoogleFonts.abrilFatface(
                fontSize: 42,
                color: const Color(0xFF2D2D2D), // สีตัวอักษรดำเทา
                letterSpacing: 1.2,
                // ใส่เงาที่นี่ครับ
                shadows: [
                  Shadow(
                    color: const Color(0xFFFB9F1C)
                        .withOpacity(1), // สีเงาเรืองแสง (ส้มอ่อน)
                    offset: const Offset(0, 5), // เงากระจายรอบตัวอักษร
                    blurRadius: 7, // ความฟุ้งของเงา
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // 3. ข้อความสโลแกน
            Text(
              'A "Moments of healthy sip\nThe best vitamin for your health',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
                height: 1.3,
              ),
            ),

            const Spacer(),

            // 4. ปุ่ม Explore Now
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
              child: SizedBox(
                width: double.infinity,
                height: 65,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const E02PageUi()),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.zero, // ปิด padding เดิม
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFFC52A), // ส้มอ่อน (ทางซ้าย)
                          Color(0xFFF69515), // ส้มเข้ม (ทางขวา)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 65,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Text(
                            '\t\t\t\t\t\tExplore Now',
                            style: GoogleFonts.poppins(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 27),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
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
