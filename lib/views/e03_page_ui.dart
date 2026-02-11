import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class E03PageUi extends StatelessWidget {
  const E03PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Center(
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: Colors.white.withOpacity(0.3), // วงกลมขาวจางแบบ E02
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
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
                Container(
                  width: double.infinity,
                  height: 315,
                  child: Image.asset(
                    'assets/images/logo_e00.png',
                    fit: BoxFit.cover,
                    alignment: const Alignment(
                        0, 5), // จุดนี้ทำให้เห็นแค่ส่วนล่างของรูป
                  ),
                ),
              ],
            ),

            // ใช้ Transform เพื่อขยับตัวหนังสือขึ้นไปข้างบน
            Transform.translate(
              offset: const Offset(0,
                  -105), // ปรับเลข -30 ให้ขยับขึ้นตามใจชอบ (ยิ่งลบเยอะยิ่งขึ้นสูง)
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Register',
                  style: GoogleFonts.poppins(
                    fontSize: 35, // ปรับขนาดให้เด่นเหมือนต้นฉบับ
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            // 2. รายละเอียดข้อความและช่องกรอกข้อมูล
            Transform.translate(
              offset: const Offset(0, -105),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Text(
                      'Create your new account',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Input Fields
                    _buildInput('Name'),
                    const SizedBox(height: 12),
                    _buildInput('E-mail'),
                    const SizedBox(height: 12),
                    _buildInput('Phone'),
                    const SizedBox(height: 12),
                    _buildInput('Password', isPass: true),

                    const SizedBox(height: 15),

                    // Terms & Conditions
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                            fontSize: 12, color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'By signing up you agree to our ',
                            style: GoogleFonts.poppins(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: GoogleFonts.poppins(
                                color: Color(0xFFF79515),
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '\nand ',
                            style: GoogleFonts.poppins(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: GoogleFonts.poppins(
                                color: Color(0xFFF79515),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10),

                    _buildSignUpButton('Sign Up'),
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
                        _socialIcon('assets/icon/Google_a_logo.png'),
                        const SizedBox(width: 20),
                        _socialIcon('assets/icon/Facebook_a_logo.png'),
                        const SizedBox(width: 20),
                        _socialIcon('assets/icon/Apple_a_logo.png'),
                      ],
                    ),
                    const SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an Account? ",
                          style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const E02PageUi()),
                            );
                          },
                          child: Text(
                            'Log In',
                            style: GoogleFonts.poppins(
                                color: Color(0xFFFB9F1C),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ปรับ Input ให้เหมือนต้นฉบับ
Widget _buildInput(String hint, {bool isPass = false}) {
  return TextField(
    obscureText: isPass,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: GoogleFonts.poppins(color: Colors.grey[400], fontSize: 14),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFF79515)),
      ),
      suffixIcon: isPass
          ? Icon(Icons.visibility_off, color: Colors.grey[500])
          : null,
    ),
  );
}

Widget _buildSignUpButton(String title) {
  return Container(
    width: double.infinity,
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: const LinearGradient(
        colors: [Color(0xFFFFC52A), Color(0xFFF79515)],
      ),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFFF79515).withOpacity(0.3),
          blurRadius: 10,
          offset: const Offset(0, 5),
        )
      ],
    ),
    child: Center(
      child: Text(
        title,
        style: GoogleFonts.poppins(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
  );
}

Widget _socialIcon(String path) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    decoration: BoxDecoration(
      shape: BoxShape.circle, // วงกลมNullBorder(),
    ),
    child: Image.asset(
      path,
      width: 40,
      height: 40,
      fit: BoxFit.contain,
    ),
  );
}
