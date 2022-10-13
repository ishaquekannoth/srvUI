import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 2,
            selectedItemColor: const Color(0xff59597C),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: "Home", icon: Image.asset("lib/images/Home.png")),
              BottomNavigationBarItem(
                  label: "Request",
                  icon: Image.asset("lib/images/Contact.png")),
              BottomNavigationBarItem(
                  label: "Request", icon: Image.asset("lib/images/middle.png")),
              BottomNavigationBarItem(
                  label: "Visit Log",
                  icon: Image.asset("lib/images/location.png")),
              BottomNavigationBarItem(
                  label: "Call", icon: Image.asset("lib/images/call.png")),
            ]),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(color: Color(0xff349540)),
                    height: size.height * 0.5,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 35,
                            ),
                            SizedBox(
                                width: 150,
                                child: Row(
                                  children: const [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "lib/images/Mask Group.png"),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'NELLIKKA',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ))
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 1, left: 10),
                              child: Text('Hello, Akhilesh SRV',
                                  style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.mulish().fontFamily,
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('NL02548574, TMC1/Kuppam',
                                  style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.mulish().fontFamily,
                                      color: const Color(0xffA0F1A9),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.2,
                          width: size.width * 0.8,
                          child: Center(
                              child: Image.asset(
                            "lib/images/PhoneDeal.png",
                            fit: BoxFit.contain,
                          )),
                          // decoration: BoxDecoration(
                          //     image: const DecorationImage(
                          //         image:
                          //             AssetImage("lib/images/PhoneDeal.png")),
                          //     borderRadius: BorderRadius.circular(15)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 100),
                    width: size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonWithText(
                          text: "Request   ",
                          icon: Icons.textsms_outlined,
                        ),
                        ButtonWithText(
                          text: "Food Waste",
                          icon: Icons.delete_outline,
                        ),
                        ButtonWithText(
                          text: "Phone Book",
                          icon: Icons.phone,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonWithText(
                          text: "Complaints",
                          icon: Icons.textsms_outlined,
                          //image: Image.asset('lib/images/trashcan.png',fit: BoxFit.contain,),
                        ),
                        ButtonWithText(
                          text: "Food Waste",
                          icon: Icons.delete_outline,
                        ),
                        ButtonWithText(
                          text: "Phone Book",
                          icon: Icons.phone,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xffF9F9F9),
                    height: size.height * 0.06,
                    margin: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text('Visit',
                              style: TextStyle(
                                  fontFamily: GoogleFonts.mulish().fontFamily,
                                  color: const Color(0xff59597C),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(5)),
                          height: 35,
                          width: size.width * 0.8,
                          child: const Center(
                              child: Text(
                            "Previous Visit :October, 25    2021, Monday",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff474747)),
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.8,
                    height: size.height * .1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Next Visit                October, 30    2021, 3:00 PM",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Items ",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500)),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xff959FB4),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: const Text("Plastic Covers,Bags"),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xff959FB4),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: const Text("Rexine"),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xff959FB4),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: const Text("Cloth"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                top: 270,
                left: 40,
                child: SizedBox(
                  width: size.width * .8,
                  height: size.height * .2,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left:4.0),
                            child: Text(
                              "My Balance",
                              style: TextStyle(
                                color: Color(0xff59597C),
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right:5.0),
                            child: Text(
                              "\u{20B9}${1500}",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold,color: Color(0xff59597C)),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff4ABEFF),
                                ),
                                height: 50,
                                width: 50,
                                child: Image.asset("lib/images/invoice.png"),
                              ),
                              const Text("Invoice"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xffFFC806),
                                ),
                                height: 50,
                                width: 50,
                                child: Image.asset("lib/images/invoice.png"),
                              ),
                              const Text("Reciepts"),
                            ],
                          ),
                              Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffFF7550),
                            ),
                            height: 50,
                            width: 50,
                            child: Image.asset("lib/images/invoice.png"),
                          ),
                          const Text("statements")
                        ],
                      ),
                          Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff64CCC5),
                            ),
                            height: 50,
                            width: 50,
                            child: Image.asset("lib/images/invoice.png"),
                          ),
                          const Text("visits")
                        ],
                      )
                        ],
                      )
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  ButtonWithText({
    required this.text,
    required this.icon,
    this.image,
    Key? key,
  }) : super(key: key);

  String text;
  Image? image;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xff5E88E5),
          child: CircleAvatar(
            radius: 23.5,
            backgroundColor: Colors.white,
            child: image ?? Icon(icon),
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontFamily: GoogleFonts.mulish().fontFamily,
              fontSize: 13,
              color: const Color(0xff59597C)),
        )
      ],
    );
  }
}
