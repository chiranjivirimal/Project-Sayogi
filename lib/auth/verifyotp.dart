import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sayogi/bloc/auth_bloc.dart';
import 'package:project_sayogi/bloc/auth_event.dart';
import 'package:project_sayogi/bloc/auth_state.dart';
import 'package:project_sayogi/home/dashboard.dart';
import 'package:project_sayogi/utils/loading_dailog.dart';
import 'package:project_sayogi/utils/toast_utils.dart';

class OtpVerifyScreen extends StatefulWidget {
  final String phone;
  final int userId;

  const OtpVerifyScreen({
    super.key,
    required this.phone,
    required this.userId,
  });

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final _pin1 = TextEditingController();
  final _pin2 = TextEditingController();
  final _pin3 = TextEditingController();
  final _pin4 = TextEditingController();

  String getOtp() {
    return _pin1.text + _pin2.text + _pin3.text + _pin4.text;
  }

  Widget _buildOtpBox(TextEditingController controller) {
    return SizedBox(
      width: 70,
      height: 60,
      child: TextField(
        controller: controller,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF0064A7)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFE1E1E1)),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1) FocusScope.of(context).nextFocus();
        },
      ),
    );
  }

  @override
  void dispose() {
    _pin1.dispose();
    _pin2.dispose();
    _pin3.dispose();
    _pin4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state is AuthLoading) {
          LoadingDialog.show(context);
        } else {
          LoadingDialog.hide(context);
        }

        if (state is AuthVerified) {
          ToastUtils.showSuccess(state.message ?? "OTP सफल भयो");

          if (!mounted) return;
          await Future.delayed(const Duration(milliseconds: 300));

          Navigator.pushAndRemoveUntil(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(builder: (_) => const Dashboard()),
            (route) => false,
          );
        }

        if (state is AuthFailure) {
          debugPrint("AuthBloc: OTP verification failed, ${state.message}");
          ToastUtils.showError(state.message ?? "OTP गलत छ");
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 141,
                    width: 196,
                    child: Center(
                      child: Image.asset(
                        'assets/verify.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'OTP प्रमाणीकरण',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      color: const Color(0xFF1AB189),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'हामीले पठाएको कोड प्रविष्ट गर्नुहोस् : ${widget.phone}',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF212121),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildOtpBox(_pin1),
                      _buildOtpBox(_pin2),
                      _buildOtpBox(_pin3),
                      _buildOtpBox(_pin4),
                    ],
                  ),
                  const SizedBox(height: 200),
                  GestureDetector(
                    onTap: () {
                      final otp = getOtp();
                      if (otp.length == 4) {
                        context.read<AuthBloc>().add(
                              VerifyOtpRequested(
                                widget.phone,
                                otp,
                                widget.userId,
                              ),
                            );
                      } else {
                        ToastUtils.showError("OTP पुरा लेख्नुहोस्");
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1AB189),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'पेस गर्नुहोस्',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<AuthBloc>()
                          .add(SendOtpRequested(widget.phone));
                      ToastUtils.showSuccess("OTP पुनः पठाइयो");
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFF1AB189),
                          width: 2,
                        ),
                      ),
                      child: Text(
                        'कोड पुनः पठाउनुहोस्',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF212121),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
