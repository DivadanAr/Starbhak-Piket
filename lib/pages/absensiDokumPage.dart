import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AbsensiDokumPage extends StatefulWidget {
  const AbsensiDokumPage({super.key});

  @override
  State<AbsensiDokumPage> createState() => _AbsensiDokumPageState();
}

class _AbsensiDokumPageState extends State<AbsensiDokumPage> {
  File? image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();

    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.camera);

    image = File(imagePicked!.path);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(40, 50, 40, 25),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                  ),
                  Container(
                    width: 140,
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
                        child: Text("Dokumentasi",
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
            Expanded(
              child: Center(
                  child: Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                padding: EdgeInsets.fromLTRB(22, 17, 22, 15),
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        spreadRadius: -1,
                        blurRadius: 7,
                        color: Color.fromRGBO(161, 161, 161, 1),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ambil Dokumentasi Kelas",
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ))),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      width: double.maxFinite,
                      height: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Colors.black38,
                          )),
                      child: Center(
                        child: image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.file(
                                  image!,
                                  fit: BoxFit.cover,
                                  height: 1000,
                                ),
                              )
                            : Text("Gambar akan tampil disini",
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ))),
                      ),
                    ),
                    Text(
                        "Pesan : Miringkan Ponsel 90 derajat untuk foto dokumentasi yang lebih baik",
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Colors.black26))),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () async {
                          // await availableCameras().then((value) =>
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) =>
                          //                 CameraPage(cameras: value))));
                          await getImage();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          elevation: MaterialStateProperty.all<double>(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(
                                color: Colors.black54,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        child: Text("Ambil Gambar",
                            style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                    color: Colors.black))),
                      ),
                    )
                  ],
                ),
              )),
            ),
            Center(
              child: SizedBox(
                height: 45,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Selanjutnya"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff7F669D)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
