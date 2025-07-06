import 'package:flutter/material.dart';
import 'package:project_sayogi/auth/verifyotp.dart';
import 'package:project_sayogi/colors/appcolors.dart';
import 'package:project_sayogi/home/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPhoneSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 100),
            Text(
              "स्वागत छ ",
              style: 
              GoogleFonts.poppins (fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text("आफ्नो खाता सुचारु गर्न लागिन गर्नुहोस ! "),

            SizedBox(height: 40),
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => isPhoneSelected = true),
                      child: Container(
                        decoration: BoxDecoration(
                          color: isPhoneSelected ? Colors.white : Colors.grey[200],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Center(
                          child: Text(
                            'फोन',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: isPhoneSelected ? Colors.black : Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => isPhoneSelected = false),
                      child: Container(
                        decoration: BoxDecoration(
                          color: isPhoneSelected ? Colors.grey[200] : Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),),
                        ),
                        child: Center(
                          child: Text(
                            'इमेल',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: isPhoneSelected ? Colors.grey : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 60),

            
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: isPhoneSelected ? 90 : 90,
                width: isPhoneSelected ? 400 : 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isPhoneSelected ? " फोन नम्बर " : "इमेल ",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    SizedBox(height: 6),
                  
                
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: isPhoneSelected ? "+977 9800000000" : "abcd@gmail.com",
                    prefixIcon:
                        Icon(isPhoneSelected ? Icons.phone : Icons.email),
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                  ]
                )
              ),
            ),

            SizedBox(height: 20),
            Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "द्च्ग्जश्क्च्व ",
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "*******",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
             SizedBox(height: 20),
            GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>  OtpVerifyScreen()));
          },
      child:
    Container(
      
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.9,
                   decoration: BoxDecoration(
                      color: AppColors.primary,
                      border: Border.all(color:  Color.fromARGB(255, 243, 240, 240)),
                      
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Center(
                    child: Text(
                            ' लगइन ',
                            style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.bold,
                              
                              color: Color.fromARGB(255, 253, 251, 251),
                            ),
                          ),
                        
                        
                    ),
                  ),
                
               
           ),
            SizedBox(height: 15),
            GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>  Dashboard()));
          },
      child:
    Container(
      
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.9,
                   decoration: BoxDecoration(
                      color: AppColors.secondary,
                      border: Border.all(color:  Color.fromARGB(255, 243, 240, 240)),
                      
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Center(
                    child: Text(
                            ' अतिथिको रूपमा लगइन गर्नुहोस ',
                            style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.bold,
                              
                              color: Color.fromARGB(255, 253, 251, 251),
                            ),
                          ),
                        
                        
                    ),
                  ),
                
               
           ),
           SizedBox(height: 30,),
           Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

          Text('अथवा साइन इन गर्नुहोस !',style: GoogleFonts.poppins( color: Colors.black, fontSize: 14),)
            ],
           
           ),
           SizedBox(height: 20,),
        
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                Container(
      
                  height: 50,
                  width: 160,
                   decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 226, 227, 227),
                      border: Border.all(color:  Color.fromARGB(255, 243, 240, 240)),
                      
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/google.png', 
                          height: 20, width: 20,
                        ),
                        SizedBox(width: 7,),
                         Text(
                            ' Google ',
                            style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600,
                              
                              color: Color.fromARGB(255, 12, 12, 12),
                            ),
                          ),
                      ]
                    )
                        
                    ),
                  ),
                  SizedBox(width: 25,),
                  Container(
      
                  height: 50,
                  width: 160,
                   decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 224, 225, 225),
                      border: Border.all(color:  Color.fromARGB(255, 243, 240, 240)),
                      
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/facebook.png', 
                          height: 20, width: 20,
                        ),
                        SizedBox(width: 8,),
                         Text(
                            'facebook',
                            style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600,
                              
                              color: Color.fromARGB(255, 15, 15, 15),
                            ),
                          ),
                      ]
                    )
                        
                    ),
                  ),
                 
                ]

              ),
              SizedBox(height: 20),
    Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'खाता छैन ? ',
            style: GoogleFonts.poppins(
              color: AppColors.secondaryText,
              fontSize: 14,
            ),
          ),
          TextSpan(
            text: 'साइनअप गर्नुहोस',
            style: GoogleFonts.poppins(
              color: AppColors.secondary,
              fontSize: 14,
              fontWeight: FontWeight.bold, 
            ),
          ),
        ],
      ),
    ),
  ],
),

            ],
           )


          ],
        ),
      )
    );
    
  }
}
