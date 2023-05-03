import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_starbhak_piket/components/bottomNavigation.dart';
import 'package:project_starbhak_piket/pages/dataSiswa.dart';
import 'utils/date.dart' as date_util;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width = 0.0;
  double height = 0.0;
  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  List<String> todos = <String>[];
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 50.0 * currentDateTime.day);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Stack(children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 25),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Selamat Datang Yoga Sensei',
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87))),
                            SizedBox(height: 2),
                            Text('Ada apa hari ini?',
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)))
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                        )
                      ]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70, left: 30),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 90),
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffDEBACE),
                                Colors.white.withOpacity(0)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 290),
                            width: 150,
                            height: 150,
                            child: ListView.builder(
                              controller: scrollController,
                              scrollDirection: Axis.horizontal,
                              physics: const ClampingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: currentMonthList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentDateTime =
                                              currentMonthList[index];
                                        });
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 12),
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              colors: (currentMonthList[index]
                                                          .day !=
                                                      currentDateTime.day)
                                                  ? [
                                                      Colors.transparent,
                                                      Colors.transparent,
                                                      Colors.transparent,
                                                    ]
                                                  : [
                                                      Color(0xff7F669D)
                                                          .withOpacity(0.8),
                                                      Color(0xff7F669D)
                                                          .withOpacity(0.7),
                                                      Color(0xff7F669D)
                                                          .withOpacity(0.6)
                                                    ],
                                              begin: const FractionalOffset(
                                                  0.0, 0.0),
                                              end: const FractionalOffset(
                                                  0.0, 1.0),
                                              stops: const [0.0, 0.5, 1.0],
                                              tileMode: TileMode.clamp),
                                        ),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                currentMonthList[index]
                                                    .day
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        (currentMonthList[index]
                                                                    .day !=
                                                                currentDateTime
                                                                    .day)
                                                            ? Colors.black54
                                                            : Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ));
                              },
                            ),
                          ),
                        ]),
                    Container(
                      margin: EdgeInsets.only(bottom: 90),
                      width: 350,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Color(0xff7F669D),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 0.4,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xffBA94D1),
                                      Color(0xffBA94D1).withOpacity(0),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Image(
                                          image: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/6109/6109086.png')),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Sakit',
                                      style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white)),
                                    )
                                  ],
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xffBA94D1),
                                      Color(0xffBA94D1).withOpacity(0),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Image(
                                          image: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/9802/9802471.png')),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Izin',
                                      style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white)),
                                    )
                                  ],
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xffBA94D1),
                                      Color(0xffBA94D1).withOpacity(0),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Image(
                                          image: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/512/953/953840.png')),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Alfa',
                                      style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white)),
                                    )
                                  ],
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 330, left: 30),
                padding: EdgeInsets.all(20),
                width: 350,
                height: 120,
                decoration: BoxDecoration(
                    color: Color(0xff7F669D),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kelas Yang Harus di Absen',
                          style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800)),
                        ),
                        Text('Sesi 1',
                            style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800))),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          margin: EdgeInsets.only(top: 10),
                          width: 250,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffF8E9F1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            '0 dari 12 kelas',
                            style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF8E9F1),
                          ),
                          child: Image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/2989/2989988.png')),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 465, left: 35),
                alignment: Alignment.topLeft,
                child: Text(
                  'Statistik Kehadiran Siswa',
                  style: GoogleFonts.quicksand(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 495, left: 35),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 0.4,
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 16 / 16,
                          child: Stack(
                            children: [
                              DChartPie(
                                data: [
                                  {'domain': 'sakit', 'measure': 40},
                                  {'domain': 'izin', 'measure': 30},
                                  {'domain': 'alfa', 'measure': 30},
                                ],
                                fillColor: (pieData, index) {
                                  switch (pieData['domain']) {
                                    case 'sakit':
                                      return Color(0xff7F669D);
                                    case 'izin':
                                      return Color(0xffDEBACE);
                                    case 'alfa':
                                      return Color(0xffBA94D1);
                                    default:
                                      return Colors.grey;
                                  }
                                },
                                donutWidth: 23,
                                labelColor: Colors.transparent,
                              ),
                              Align(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Bulan',  style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w800)),),
                                      Text(
                                date_util.DateUtils.months[currentDateTime.month - 1],
                                style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w900)),
                              ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 495, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 120,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4,
                                )
                              ]),
                          child: Container(
                            padding: EdgeInsets.only(right: 20,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   
                              children: [
                              AspectRatio(
                          aspectRatio: 5 / 6,
                          child: Stack(
                            children: [
                              DChartPie(
                                data: [
                                  {'domain': 'sakit', 'measure': 40},
                                  {'domain': 'izin', 'measure': 30},
                                  {'domain': 'alfa', 'measure': 30},
                                ],
                                fillColor: (pieData, index) {
                                  switch (pieData['domain']) {
                                  
                                    case 'izin':
                                      return Color(0xffDEBACE);
                              
                                    default:
                                      return Colors.grey;
                                  }
                                },
                                donutWidth: 3,
                                labelColor: Colors.transparent,
                              ),
                              
                            ],
                          ),
                        ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Izin',
                                  style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 120,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4,
                                )
                              ]),
                          child: Container(
                            padding: EdgeInsets.only(right: 20,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   
                              children: [
                              AspectRatio(
                          aspectRatio: 5 / 6,
                          child: Stack(
                            children: [
                              DChartPie(
                                data: [
                                  {'domain': 'sakit', 'measure': 40},
                                  {'domain': 'izin', 'measure': 30},
                                  {'domain': 'alfa', 'measure': 30},
                                ],
                                fillColor: (pieData, index) {
                                  switch (pieData['domain']) {
                                  
                                     case 'sakit':
                                      return Color(0xff7F669D);
                                  
                              
                                    default:
                                      return Colors.grey;
                                  }
                                },
                                donutWidth: 3,
                                labelColor: Colors.transparent,
                              ),
                              
                            ],
                          ),
                        ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Sakit',
                                  style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 120,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4,
                                )
                              ]),
                          child: Container(
                            padding: EdgeInsets.only(right: 20,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   
                              children: [
                              AspectRatio(
                          aspectRatio: 5 / 6,
                          child: Stack(
                            children: [
                              DChartPie(
                                data: [
                                  {'domain': 'sakit', 'measure': 40},
                                  {'domain': 'izin', 'measure': 30},
                                  {'domain': 'alfa', 'measure': 30},
                                ],
                                fillColor: (pieData, index) {
                                  switch (pieData['domain']) {
                                
                                    case 'alfa':
                                      return Color(0xffBA94D1);
                                    default:
                                      return Colors.grey;
                                  }
                                },
                                donutWidth: 3,
                                labelColor: Colors.transparent,
                              ),
                              
                            ],
                          ),
                        ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Alfa',
                                  style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            // onTap: () => Navigator.push(context,  MaterialPageRoute(builder: (context) => dataSiswa())),
                          child: Container(
                            margin: EdgeInsets.only(top: 710, left: 35),
                            width: 165,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xff7F669D),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4,
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset('assets/images/schedule.png')),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Jadwal Piket',
                                  style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(context,  MaterialPageRoute(builder: (context) => dataSiswa())),
                          child: Container(
                            margin: EdgeInsets.only(top: 710, left: 10),
                            width: 165,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xff7F669D),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4,
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset(
                                        'assets/images/students-cap.png')),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Data Siswa',
                                  style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                       Row(
                      children: [
                        GestureDetector(
                        // onTap: () => Navigator.push(context,  MaterialPageRoute(builder: (context) => ())),
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 35),
                        width: 165,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xff7F669D),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(
                                1.0,
                                1.0,
                              ),
                              blurRadius: 2.0,
                              spreadRadius: 0.4,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                child:
                                    Image.asset('assets/images/guest-list.png')),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Buku Tamu',
                              style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            )
                          ],
                        ),
                      ),
                    ),
                        GestureDetector(
                          // onTap: () => Navigator.push(context,  MaterialPageRoute(builder: (context) => dataSiswa())),
                          child: Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            width: 165,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xff7F669D),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4,
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset(
                                        'assets/images/violence.png')),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Pelanggaran Siswa',
                                  style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
