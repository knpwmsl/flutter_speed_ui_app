import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d06_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class D05PageUi extends StatefulWidget {
  const D05PageUi({super.key});

  @override
  State<D05PageUi> createState() => _D05PageUiState();
}

class _D05PageUiState extends State<D05PageUi> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            // หัวข้อ OTP Verification
            Text(
              'OTP Verification',
              style: GoogleFonts.urbanist(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1E232C),
              ),
            ),
            const SizedBox(height: 15),
            // คำอธิบาย
            Text(
              "Enter the verification code we just sent on your email address.",
              style: GoogleFonts.urbanist(
                fontSize: 16,
                color: const Color(0xFF6A707C),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 40),

            // ช่องกรอก OTP 4 ช่อง
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildOtpBox(),
                _buildOtpBox(),
                _buildOtpBox(),
                _buildOtpBox(),
              ],
            ),
            const SizedBox(height: 40),

            // ปุ่ม Verify
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const D06PageUi()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E232C),
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Verify',
                  style: GoogleFonts.urbanist(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างช่อง OTP แต่ละช่อง
  Widget _buildOtpBox() {
    return SizedBox(
      height: 70,
      width: 70,
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context)
                .nextFocus(); // พิมพ์เสร็จแล้วกระโดดไปช่องถัดไป
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: "", // ซ่อนตัวนับตัวอักษรด้านล่าง
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
    );
  }
}
