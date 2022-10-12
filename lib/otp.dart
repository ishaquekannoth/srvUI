import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPWidget extends StatelessWidget {
  const OTPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: (Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 35),
              height: size.height * .4,
              width: size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Container(
                        height: size.height * 0.3,
                        width: size.width * 0.7,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("lib/images/Otp.png"),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Enter OTP",
                          style: TextStyle(
                              color: Color(0xff59597C),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "We have sent OTP to ",
                              style: TextStyle(
                                  color: Color(0xff959FB4),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "9876543210",
                              style: TextStyle(
                                  color: Color(0xff959FB4),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.edit_note,
                              color: Color(0xff959FB4),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: size.height * .1,
            ),
            SizedBox(
              child: Container(
                padding: const EdgeInsets.only(left: 40),
                height: size.height * 0.2,
                width: size.width * 0.7,
                child: Stack(
                  children: [
                    Text(
                      "Enter OTP",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff959FB4),
                          fontFamily: GoogleFonts.mulish().fontFamily),
                    ),
                    Positioned(
                      top: 25,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            OTPField(),
                            SizedBox(
                              width: 10,
                            ),
                            OTPField(),
                            SizedBox(
                              width: 10,
                            ),
                            OTPField(),
                            SizedBox(
                              width: 10,
                            ),
                            OTPField(),
                          ]),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: const Color(0xff3fa44a)),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: GoogleFonts.roboto().fontFamily),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Didnt Recieve OTP ? ",
                    style: TextStyle(
                        color: Color(
                          0xff9C9C9C,
                        ),
                        fontSize: 13),
                  ),
                  Text(
                    "Resend",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color(0xff787878)),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

class OTPField extends StatelessWidget {
  const OTPField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(
            0xffF2F2F2,
          )),
      child: const Center(
          child: Text(
        "5",
        style: TextStyle(
            fontSize: 20,
            color: Color(0xff59597C),
            fontWeight: FontWeight.w500),
      )),
    );
  }
}
