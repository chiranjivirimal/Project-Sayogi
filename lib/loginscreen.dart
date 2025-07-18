import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sayogi/auth/verifyotp.dart';
import 'package:project_sayogi/bloc/auth_bloc.dart';
import 'package:project_sayogi/bloc/auth_event.dart';
import 'package:project_sayogi/bloc/auth_state.dart';
import 'package:project_sayogi/utils/loading_dailog.dart';
import 'package:project_sayogi/utils/toast_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthLoading) {
          LoadingDialog.show(context);
        } else {
          LoadingDialog.hide(context);
        }

        if (state is OtpSentSuccess) {
          ToastUtils.showSuccess("OTP पठाइयो");

          
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: context.read<AuthBloc>(), 
                child: OtpVerifyScreen(
                  phone: state.phone,
                  userId: state.userId,
                ),
              ),
            ),
          );
        }

        if (state is AuthFailure) {
  ToastUtils.showError(state.message ?? "OTP verification failed");
}
      },
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Center(
                child: Image.asset(
                  'assets/mainlogo.png',
                  height: 162,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 60),
              Text(
                'स्वागत छ',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF222222),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'आफ्नो खाता सुचारु गर्न लगइन गर्नुहोस् !',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF888888),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'फोन नम्बर',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF222222),
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '+977 9800000000',
                  prefixIcon: const Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  final phone = _phoneController.text.trim();
                  if (phone.isNotEmpty) {
                    context.read<AuthBloc>().add(SendOtpRequested(phone));
                  } else {
                    ToastUtils.showError("फोन नम्बर लेख्नुहोस्");
                  }
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1AB189),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'लगइन',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
