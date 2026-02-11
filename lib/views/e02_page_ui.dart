import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e04_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class E02PageUi extends StatelessWidget {
  const E02PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 70, // เพิ่มความกว้างเพื่อให้วงกลมไม่ชิดขอบเกินไป
        leading: Padding(
          padding: const EdgeInsets.only(
              left: 10, top: 20), // ขยับปุ่มออกจากขอบจอเล็กน้อย
          child: Center(
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3), // วงกลมสีขาวจางๆ
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/logo_e00.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            // 2. ข้อความต้อนรับ
            Text(
              'Welcome back',
              style: GoogleFonts.poppins(
                fontSize: 38,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Text(
              'Login to your account',
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  _buildInput('Enter email or phone'),
                  const SizedBox(height: 15),
                  _buildInput('Password', isPass: true),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () =>Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => const E04PageUi())),
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFFFB9F1C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  _buildLoginButton(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1, // ความหนาของเส้น
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFEEEEEE), // เริ่มจากเทาจางๆ
                                  Color(0xFFF79515), // ไล่ไปสีส้ม
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'OR',
                            style: GoogleFonts.poppins(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFF79515), // เริ่มจากสีส้ม
                                  Color(0xFFEEEEEE), // ไล่ไปสีเทาจางๆ
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icon/Google_a_logo.png',
                          color: null,
                        ),
                      ),
                      const SizedBox(width: 30),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icon/Facebook_a_logo.png',
                          color: null,
                        ),
                      ),
                      const SizedBox(width: 30),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icon/Apple_a_logo.png',
                          color: null,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account? ",
                      style: GoogleFonts.poppins(color: Colors.black, 
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        onTap: () =>Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => const E03PageUi())),
                        child: Text(
                          'Create Account',
                          style: GoogleFonts.poppins(
                              color: Color(0xFFFB9F1C),
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(String hint, {bool isPass = false}) {
    return TextField(
      obscureText: isPass,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: const Color(0xFF8B8B8B)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xFFFB9F1C)),
        ),
        suffixIcon: isPass
            ? Icon(Icons.visibility_off, color: Colors.grey[500])
            : null,
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [Color(0xFFFFC52A), Color(0xFFF69515)], // ไล่สีส้ม
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        child: Text(
          'Log In',
          style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  // ignore: unused_element
  Widget _socialTile(IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: FaIcon(icon, color: color, size: 25),
    );
  }
}
