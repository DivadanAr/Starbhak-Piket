import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_starbhak_piket/components/bottomNavigation.dart';

class keterlambatan extends StatefulWidget {
  const keterlambatan({super.key});

  @override
  State<keterlambatan> createState() => _keterlambatanState();
}

class _keterlambatanState extends State<keterlambatan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 220,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      // border: Border.all(width: 1.5, color: Color.fromARGB(255, 89, 89, 89))
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                          blurRadius: 5,
                          color: Colors.black38,
                        )
                      ]),
                  child: Container(
                    child: Center(
                      child: Text("Keterlambatan Siswa",
                          style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ))),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Rabu',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ))),
                    Text('20 April 2023',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        )))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: 350,
            height: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                    blurRadius: 5,
                    color: Colors.black38,
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kelas',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ))),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.black38),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nama',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ))),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.black38),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Alasan',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ))),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 300,
                      height: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.black38),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(top: 15, left: 90),
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                    blurRadius: 5,
                    color: Colors.black38,
                  )
                ]),
            child: Text('+ Tambah Siswa Baru',
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black87))),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(top: 15, left: 145),
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xff7F669D),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                    blurRadius: 5,
                    color: Colors.white,
                  )
                ]),
            child: Text('Simpan',
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white))),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
