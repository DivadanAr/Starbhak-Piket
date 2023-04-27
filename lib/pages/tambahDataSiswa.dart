import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_starbhak_piket/components/bottomNavigation.dart';

class addSiswa extends StatelessWidget {
  const addSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff7F669D),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        // border: Border.all(width: 1.5, color: Color.fromARGB(255, 89, 89, 89))
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            color: Color.fromRGBO(208, 208, 208, 1),
                          )
                        ]),
                    child: Container(
                      child: Center(
                        child: Text("Tambah Data Siswa",
                            style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 750,
              width: 350,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                color: Color(0xff7F669D),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    color: Colors.black45,
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NISN',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 300,
                        height: 45,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ],  borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(style: BorderStyle.solid, color: Colors.black45, )
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NIPD',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 300,
                        height: 45,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ],  borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(style: BorderStyle.solid, color: Colors.black45, )
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 300,
                        height: 45,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ],  borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(style: BorderStyle.solid, color: Colors.black45, )
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kelas',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 300,
                        height: 45,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ],  borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(style: BorderStyle.solid, color: Colors.black45, )
                        ),
                      ),
                      SizedBox(height: 15,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jurusan',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 300,
                        height: 45,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ],  borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(style: BorderStyle.solid, color: Colors.black45, )
                        ),
                      )
                    ],
                  )
                    ],
                  ),
                  SizedBox(height: 15,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jenis Kelamin',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 300,
                        height: 45,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ],  borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(style: BorderStyle.solid, color: Colors.black45, )
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Agama',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 300,
                        height: 45,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ],  borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(style: BorderStyle.solid, color: Colors.black45, )
                        ),
                      )
                    ],
                  ), 
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 120,
                        height: 45,
                        decoration:
                            BoxDecoration(color: Colors.redAccent, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ],  borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(style: BorderStyle.solid, color: Colors.black45, )
                        ),
                        child: Center(
                          child: Text('Batal', style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white)),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 120,
                        height: 45,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            color: Colors.black,
                          )
                        ],  borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(style: BorderStyle.solid, color: Colors.black45, )
                        ),
                        child: Center(
                          child: Text('Simpan', style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.black)),),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
