import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_starbhak_piket/components/bottomNavigation.dart';
import 'package:searchfield/searchfield.dart';

class AbsensiDataSiswaPage extends StatefulWidget {
  const AbsensiDataSiswaPage({super.key});

  @override
  State<AbsensiDataSiswaPage> createState() => _AbsensiDataSiswaPageState();
}

class ListItem {
  String title;

  ListItem(this.title);
}

class _AbsensiDataSiswaPageState extends State<AbsensiDataSiswaPage> {
  final List<String> _suggestions = [
    'Divadan Arya Putrama',
    'Sheyla Aulia',
    'Khairan Nail',
    'Varrel Steven Mailano',
    'Rey Khadisa',
    'Andy Alphard Rahmana',
    'Aryo Syawalito Bimo',
    'Arya Rahman Praditya',
    'Ibrahim Khalis',
    'Kiagus Ahmad Farhan Aziz',
    'Agung Raviano',
    'Siti Nurul Homisah',
  ];

  List<ListItem> _listItems = [];
  List<String?> _selectedValue = [];

  void _addItem() {
    if (_searchController.text.isNotEmpty) {
      setState(() {
        _listItems.add(ListItem(_searchController.text));
        _searchController.clear();
        _selectedValue = List.generate(_listItems.length, (_) => null);
      });
    }
  }

  // List<String?> _selectedValue = List.generate(_listItems.length, (_) => null);

  final _searchController = TextEditingController();

  @override
  void _setSelectedValue(int index, String? value) {
    setState(() {
      _selectedValue[index] = value;
    });
  }

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
                        child: Text("Pilih Siswa",
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
              child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("X PPLG 2",
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                    ))),
                                SizedBox(height: 3),
                                Text("Nahlan Naufan",
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    )))
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 27,
                            decoration: BoxDecoration(
                                color: Color(0xff7F669D),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text("30 Siswa",
                                  style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, bottom: 20),
                        width: double.maxFinite,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(width: 1, color: Colors.black26)),
                        child: SingleChildScrollView(
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          child: SearchField(
                            searchInputDecoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search_rounded,
                                size: 25,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(7.0), // radius
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(7.0), // radius
                                borderSide: BorderSide(
                                    width: 1, color: Colors.transparent),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(7.0), // radius
                                borderSide: BorderSide(
                                    width: 2, color: Colors.transparent),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(7.0), // radius
                                borderSide: BorderSide(
                                    width: 1, color: Colors.transparent),
                              ),
                            ),
                            suggestionState: Suggestion.expand,
                            suggestionAction: SuggestionAction.next,
                            suggestions: _suggestions
                                .map((e) => SearchFieldListItem(e))
                                .toList(),
                            textInputAction: TextInputAction.next,
                            controller: _searchController,
                            hint: 'Cari Data Siswa...',
                            // initialValue: SearchFieldListItem(_suggestions[2], SizedBox()),
                            maxSuggestionsInViewPort: 3,
                            itemHeight: 50,
                            onSuggestionTap: (x) {
                              _addItem();
                            },
                          ),
                        ),
                      ),
                      Text(_listItems.length.toString() + " siswa",
                          style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700))),
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.all(0),
                          itemCount: _listItems.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                              width: double.maxFinite,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 2, color: Colors.black12)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    _listItems[index].title,
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: _selectedValue[index] == 'Izin'
                                            ? Color(0xffDEBACE)
                                            : _selectedValue[index] == 'Alfa'
                                                ? Color(0xffBA94D1)
                                                : Color(0xff7F669D),
                                        // Color(0xff7F669D), // set the background color
                                      ),
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            String? _selectedValue;
                                            return AlertDialog(
                                              content: Container(
                                                height: 210,
                                                child: Column(
                                                  children: [
                                                    Text("KETERANGAN",
                                                        style: GoogleFonts.quicksand(
                                                            textStyle: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800))),
                                                    SizedBox(height: 15),
                                                    RadioListTile(
                                                      title: Text('Izin'),
                                                      value: 'Izin',
                                                      groupValue:
                                                          _selectedValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          _setSelectedValue(
                                                              index, value);
                                                          Navigator.pop(
                                                              context);
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      title: Text('Sakit'),
                                                      value: 'Sakit',
                                                      groupValue:
                                                          _selectedValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          _setSelectedValue(
                                                              index, value);
                                                          Navigator.pop(
                                                              context);
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      title: Text('Alfa'),
                                                      value: 'Alfa',
                                                      groupValue:
                                                          _selectedValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          _setSelectedValue(
                                                              index, value);
                                                          Navigator.pop(
                                                              context);
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        _selectedValue[index] ?? 'Ket',
                                        style: TextStyle(
                                          color: _selectedValue[index] == 'Izin'
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
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
