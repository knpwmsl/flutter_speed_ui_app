import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class D03PageUi extends StatefulWidget {
  const D03PageUi({super.key});

  @override
  State<D03PageUi> createState() => _D03PageUiState();
}

class _D03PageUiState extends State<D03PageUi> {
  bool _obscureText = true;
  bool _obscureConfirmText = true;

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
              icon: const Icon(Icons.arrow_back_ios_new,
                  size: 18, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            // ข้อความต้อนรับ
            Text(
              'Hello! Register to get\nstarted',
              style: GoogleFonts.urbanist(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1E232C),
              ),
            ),
            const SizedBox(height: 30),

            // ช่องกรอก Username
            _buildTextField('Username', height: 160),
            const SizedBox(height: 18),

            // ช่องกรอก Email
            _buildTextField('Email', height: 160),
            const SizedBox(height: 18),

            // ช่องกรอก Password
            _buildPasswordField('Password', _obscureText, () {
              setState(() => _obscureText = !_obscureText);
            }),
            const SizedBox(height: 18),

            // ช่องกรอก Confirm Password
            _buildPasswordField('Confirm password', _obscureConfirmText, () {
              setState(() => _obscureConfirmText = !_obscureConfirmText);
            }),
            const SizedBox(height: 25),

            // ปุ่ม Register
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
                  'Register',
                  style: GoogleFonts.urbanist(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // ตัวแบ่ง Or Register with
            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey.shade300)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Or Register with',
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF6A707C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey.shade300)),
              ],
            ),
            const SizedBox(height: 30),

            // ปุ่ม Social Register
            Row(
              children: [
                _buildSocialButton('assets/icon/Facebook_d_logo.png',
                    height: 25),
                const SizedBox(width: 10),
                _buildSocialButton('assets/icon/Google_c_logo.png', height: 25),
                const SizedBox(width: 10),
                _buildSocialButton('assets/icon/Apple_b_logo.png', height: 25),
              ],
            ),
            const SizedBox(height: 95),

            // ส่วนท้าย Login Now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.urbanist(
                    color: const Color(0xFF6A707C),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    "Login Now",
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF35C2C1),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างช่องกรอกข้อความทั่วไป
  Widget _buildTextField(String hint, {required int height}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.urbanist(
          fontSize: 20,
          color: const Color(0xFF8391A1),
        ),
        filled: true,
        fillColor: const Color(0xFFF7F8F9),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างช่องกรอกรหัสผ่าน
  Widget _buildPasswordField(
      String hint, bool obscure, VoidCallback toggleVisibility) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.urbanist(
          fontSize: 20,
          color: const Color(0xFF8391A1),
        ),
        filled: true,
        fillColor: const Color(0xFFF7F8F9),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        suffixIcon: IconButton(
          icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
          onPressed: toggleVisibility,
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
    );
  }

  // ฟังก์ชันสร้างปุ่ม Social
  Widget _buildSocialButton(String assetPath, {required int height}) {
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
