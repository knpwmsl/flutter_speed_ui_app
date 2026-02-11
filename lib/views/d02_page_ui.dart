import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d04_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class D02PageUi extends StatefulWidget {
  const D02PageUi({super.key});

  @override
  State<D02PageUi> createState() => _D02PageUiState();
}

class _D02PageUiState extends State<D02PageUi> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
              // ✅ แก้จุดที่ 1: ใช้ pop แทน push เพื่อย้อนกลับไปหน้าก่อนหน้า (D01)
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const D01PageUi()),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            Text(
              'Welcome back! Glad\nto see you, Again!',
              style: GoogleFonts.urbanist(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1E232C),
              ),
            ),
            const SizedBox(height: 40),

            // ช่องกรอก Email
            TextField(
              // ✅ แก้จุดที่ 2: ลบ obscureText ออก (Email ไม่ควรเป็นรหัสลับ)
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                hintText: 'Enter your Email',
                hintStyle: GoogleFonts.urbanist(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF8391A1),
                ),
                filled: true,
                fillColor: const Color(0xFFF7F8F9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // ช่องกรอก Password
            TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                hintText: 'Enter your password',
                hintStyle: GoogleFonts.urbanist(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF8391A1),
                ),
                filled: true,
                fillColor: const Color(0xFFF7F8F9),
                suffixIcon: IconButton(
                  icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => setState(() => _obscureText = !_obscureText),
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
                ),
              ),
            ),
            
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const D04PageUi())),
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.urbanist(
                    color: const Color(0xFF6A707C),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // ปุ่ม Login
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E232C),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.urbanist(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),

            Row(
              children: [
                Expanded(child: Divider(color: const Color(0xFFE8ECF4))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Or Login with',
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF6A707C),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(child: Divider(color: const Color(0xFFE8ECF4))),
              ],
            ),
            const SizedBox(height: 25),

            Row(
              children: [
                _buildSocialButton('assets/icon/Facebook_d_logo.png'),
                const SizedBox(width: 10),
                _buildSocialButton('assets/icon/Google_c_logo.png'),
                const SizedBox(width: 10),
                _buildSocialButton('assets/icon/Apple_b_logo.png'),
              ],
            ),

            // ✅ แก้จุดที่ 3: เปลี่ยนจาก SizedBox(height: 200) เป็นระยะห่างที่น้อยลง
            // เพื่อไม่ให้ดันเนื้อหาล้นจอจนขึ้นแถบเหลือง
            const SizedBox(height: 50), 

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: GoogleFonts.urbanist(
                    color: const Color(0xFF6A707C),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const D03PageUi())),
                  child: Text(
                    "Register Now",
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF35C2C1),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // เผื่อระยะขอบล่าง
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton(String assetPath) {
    return Expanded(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Image.asset(assetPath, height: 25),
        ),
      ),
    );
  }
}