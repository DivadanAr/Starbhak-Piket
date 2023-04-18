import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_starbhak_piket/components/bottomNavigation.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                ClipPath(
                  clipper: ClipPathClass(),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Color(0xff7F669D),
                  ),
                ),
                Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 140, bottom: 40),
                      width: 180,
                      height: 180,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
                      )),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Pengguna',
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(top: 12, left: 20),
                margin: EdgeInsets.only(bottom: 10),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black12,
                        style: BorderStyle.solid,
                        width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text('Sheyla Aulya',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600))),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Pengguna',
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.only(top: 12, left: 20),
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black12,
                        style: BorderStyle.solid,
                        width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text('sheyla@gmail.com',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600))),
              )
            ],
          ),
          Container(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Ubah Data Pengguna",
                  style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w800))),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff7F669D)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
