import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_starbhak_piket/components/bottomNavigation.dart';

class rekap extends StatelessWidget {
  const rekap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
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
                      child: Text("Rekapitulasi",
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
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Absensi Hari Ini',
                      style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: 350,
                    height: 365,
                    decoration: BoxDecoration(
                        color: Color(0xff7F669D),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Sesi 1',
                                            style: GoogleFonts.quicksand(
                                                textStyle: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                            ))),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          margin: EdgeInsets.only(left: 10),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  left: BorderSide(
                                                      color: Colors.black45,
                                                      style: BorderStyle.solid,
                                                      width: 2))),
                                          child: Text('12/12 Kelas',
                                              style: GoogleFonts.quicksand(
                                                  textStyle: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45,
                                                fontSize: 16,
                                              ))),
                                        ),
                                      ],
                                    ),
                                    Image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/512/8832/8832119.png'),
                                      width: 40,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Sesi 2',
                                            style: GoogleFonts.quicksand(
                                                textStyle: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                            ))),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          margin: EdgeInsets.only(left: 10),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  left: BorderSide(
                                                      color: Colors.black45,
                                                      style: BorderStyle.solid,
                                                      width: 2))),
                                          child: Text('12/12 Kelas',
                                              style: GoogleFonts.quicksand(
                                                  textStyle: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45,
                                                fontSize: 16,
                                              ))),
                                        ),
                                      ],
                                    ),
                                    Image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/512/8832/8832119.png'),
                                      width: 40,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 300,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jumlah Siswa Hadir',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      fontSize: 16,
                                    )),
                                  ),
                                  Text(
                                    '200',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      fontSize: 16,
                                    )),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jumlah Siswa Tidak Hadir',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 16,
                                    )),
                                  ),
                                  Text(
                                    '20',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 16,
                                    )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 300,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.download),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Unduh Laporan Absensi',
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16,
                                )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Laporan Keterlambatan',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.only(top: 5),
                    width: 350,
                    height: 280,
                    decoration: BoxDecoration(
                        color: Color(0xff7F669D),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: 10, left: 20, right: 20),
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jumlah Siswa Terlambat',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      fontSize: 16,
                                    )),
                                  ),
                                  Text(
                                    '2',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      fontSize: 16,
                                    )),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              padding:
                                  EdgeInsets.only(top: 15, left: 20, right: 20),
                              width: 300,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                style: BorderStyle.solid,
                                                width: 2,
                                                color: Colors.black45))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'No',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Nama',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Kelas',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '1',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Divadan Arya P',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'XI PPLG 2',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '2',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Kiagus Ahmad F',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'XI PPLG 2',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 300,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.download),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Unduh Laporan Absensi',
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16,
                                )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Laporan Kunjungan Tamu',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.only(top: 5),
                    width: 350,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Color(0xff7F669D),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: 10, left: 20, right: 20),
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jumlah Tamu Berkunjung',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      fontSize: 16,
                                    )),
                                  ),
                                  Text(
                                    '3',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      fontSize: 16,
                                    )),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              padding:
                                  EdgeInsets.only(top: 15, left: 20, right: 20),
                              width: 300,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                style: BorderStyle.solid,
                                                width: 2,
                                                color: Colors.black45))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'No',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Nama',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Instansi',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '1',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Thomas Jefri',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'PT MNC',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '2',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Jajang ST.',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Ortu Siswa',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '3',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Alfiansyah',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Kelurahan',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 300,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.download),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Unduh Laporan Buku Tamu',
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16,
                                )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Laporan Pelanggaran',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.only(top: 5),
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Color(0xff7F669D),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: 10, left: 20, right: 20),
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jumlah Pelanggaran',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      fontSize: 16,
                                    )),
                                  ),
                                  Text(
                                    '1',
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      fontSize: 16,
                                    )),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              padding:
                                  EdgeInsets.only(top: 15, left: 20, right: 20),
                              width: 300,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                style: BorderStyle.solid,
                                                width: 2,
                                                color: Colors.black45))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'No',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Nama',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Pelanggaran',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '1',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Divadan Arya P',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        ),
                                        Text(
                                          'Tawuran',
                                          style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 16,
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 300,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.download),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Unduh Laporan Pelanggaran',
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16,
                                )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color(0xff7F669D),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.download, color: Colors.white,),
                        SizedBox(
                          width: 5, 
                        ),
                        Text(
                          'Unduh Laporan Hari Ini',
                          style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 16,
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
