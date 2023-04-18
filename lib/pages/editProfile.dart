import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_starbhak_piket/components/bottomNavigation.dart';

class editProfile extends StatelessWidget {
  const editProfile({super.key});

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
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                ),
                Container(
                  width: 220,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      // border: Border.all(width: 1.5, color: Color.fromARGB(255, 89, 89, 89))
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 7),
                          spreadRadius: 0,
                          blurRadius: 5,
                          color: Color.fromRGBO(208, 208, 208, 1),
                        )
                      ]),
                  child: Container(
                    child: Center(
                      child: Text("Ubah Data Pengguna",
                          style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ))),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: Center(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 80, bottom: 20),
                      width: 200,
                      height: 200,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
                      )),
                  Text(
                    'Ubah Foto',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87)),
                  )
                ],
              ),
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
                margin: EdgeInsets.only(bottom: 5),
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
              ),
              Container(
                  margin: EdgeInsets.only(left: 200, bottom: 20),
                  child: TextButton(
                      onPressed: () {},
                      child: Text('Ubah Email Pengguna',
                          textAlign: TextAlign.end,
                          style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87)))))
            ],
          ),
          Container(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Simpan Perubahan",
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
    );
  }
}
