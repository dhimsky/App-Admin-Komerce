import 'package:flutter/material.dart';

class BottomSheetFilter extends StatefulWidget {
  const BottomSheetFilter({super.key});

  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          builder: (BuildContext context) {
            return Container(
              padding:
                  EdgeInsets.fromLTRB(24, 15, 24, 32),
              width: 375,
              height: 360,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        135.5, 0, 135.5, 32),
                    width: double.infinity,
                    height: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xffc2c2c2),
                    ),
                  ),
                  SizedBox(
                    width: 327,
                    height: 24,
                    child: Text(
                      'Filter',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 327,
                    height: 66,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  child: Text(
                                    'Aktivitas',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 14,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 327,
                          height: 40,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFE2E2E2)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: DropdownButton<String>(
                                  value: selectedValue,
                                  onChanged:
                                      // onDropdownChanged,
                                      (String? newValue) {
                                    setState(() {
                                      selectedValue = newValue!;
                                      print('object $selectedValue');
                                    });
                                  },
                                  hint: Text('Pilih Aktivitas',
                                      style: TextStyle(
                                          color:
                                              Colors.grey)), // Atur warna hint
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                  isExpanded: true,
                                  underline: Container(),
                                  items: <String?>[
                                    'Tambah Alamat',
                                    'Update No. HP',
                                    'Kirim Ulang Verifikasi',
                                  ].map((String? value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value ?? 'Pilih Aktivitas'),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: double.infinity,
                    height: 85,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 159.50,
                          height: 66,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'Awal',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 14,
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // selectDateAwal();
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 40,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 10,
                                      ),
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Color(0xFFE2E2E2),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Text('',
                                              // '${_selectedDateAwal.day.toString().padLeft(2, '0')}/${_selectedDateAwal.month.toString().padLeft(2, '0')}/${_selectedDateAwal.year.toString()}',
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            child: Image.asset(
                                              'assets/images/calendar.png',
                                              width: 375,
                                              height: 273,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 159.50,
                          height: 66,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'Akhir',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 14,
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // selectDateAkhir();
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 40,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 10,
                                      ),
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Color(0xFFE2E2E2),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Text('',
                                              // '${_selectedDateAkhir.day.toString().padLeft(2, '0')}/${_selectedDateAkhir.month.toString().padLeft(2, '0')}/${_selectedDateAkhir.year.toString()}',
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            child: Image.asset(
                                              'assets/images/calendar.png',
                                              width: 375,
                                              height: 273,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFF95031)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Reset',
                                  style: TextStyle(
                                    color: Color(0xFFF95031),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Container(
                            height: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            decoration: ShapeDecoration(
                              color: Color(0xFFC2C2C2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Terapkan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
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
            );
          },
        );
      },
      child: Container(
        width: 48,
        height: 48,
        child: Image.asset(
          'assets/images/filter-square.png',
          width: 375,
          height: 273,
        ),
      ),
    );
  }
}
