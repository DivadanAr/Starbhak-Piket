import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_starbhak_piket/pages/auth/loginPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible = false;
  bool _isChecked = false;

  void togglePasswordVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 30, 30, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            child: Text(
                              "HI, Welcome back",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Text(
                              "HI, Welcome back",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Username",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Enter Your Username',
                                      hintText: 'Username',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.0), // radius
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400)),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0), // radius
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey.shade400),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0), // radius
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.red.shade700),
                                      ),
                                      labelStyle:
                                          const TextStyle(color: Colors.black54)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email Address",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Enter Your Email',
                                      hintText: 'example@exmp.le',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.0), // radius
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400)),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0), // radius
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey.shade400),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0), // radius
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.red.shade700),
                                      ),
                                      labelStyle:
                                          const TextStyle(color: Colors.black54)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Password",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                TextFormField(
                                  obscureText: !passwordVisible,
                                  decoration: InputDecoration(
                                    labelText: 'Enter Your Password',
                                    hintText: 'min 6 char',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0), // radius
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey.shade400)),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(7.0), // radius
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey.shade400),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(7.0), // radius
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.red.shade700),
                                    ),
                                    labelStyle:
                                        const TextStyle(color: Colors.black54),
                                    suffixIcon: IconButton(
                                      onPressed: togglePasswordVisibility,
                                      icon: Icon(
                                        passwordVisible
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: _isChecked,
                                        onChanged: (value) {
                                          setState(() {
                                            _isChecked = value!;
                                          });
                                        },
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        visualDensity: VisualDensity(
                                          horizontal: VisualDensity.minimumDensity,
                                          vertical: VisualDensity.minimumDensity,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        checkColor: Colors.black,
                                        activeColor: Colors.white,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Remember me",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Forgot Password",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(255, 255, 3, 3),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 18),
                          SizedBox(
                            width: double.maxFinite,
                            height: 45,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color(0xff7F669D)),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Login",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 1.5,
                                  width: 100,
                                  color: Colors.black26,
                                ),
                                Text(
                                  "Or Login With",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1.5,
                                  width: 100,
                                  color: Colors.black26,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 155,
                                  height: 55,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 136, 136, 136)),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.facebook,
                                          color: Colors.blue,
                                          size: 27,
                                        ),
                                        Text(
                                          "Facebook",
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.quicksand(
                                            textStyle: TextStyle(
                                              color:
                                                  Color.fromARGB(221, 26, 26, 26),
                                              fontWeight: FontWeight.w800,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 155,
                                  height: 55,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 136, 136, 136)),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        // Icon(Icons.abc, color: Colors.blue, size: 27,),
                                        Text(
                                          "Google",
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.quicksand(
                                            textStyle: TextStyle(
                                              color:
                                                  Color.fromARGB(221, 26, 26, 26),
                                              fontWeight: FontWeight.w800,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=>LoginPage())));
                        },
                        child: Text(
                          "Sign In",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              color: Color(0xff7F669D),
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
