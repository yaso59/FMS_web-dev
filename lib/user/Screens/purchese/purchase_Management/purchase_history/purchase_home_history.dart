import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web_data_table/web_data_table.dart';

class SampleData {
  List<Map<String, dynamic>> data = [
    {'Voucher No': '1', 'Date': '20/12/23', 'Seller Details': '','Particulars/Description':'no','Amount':'2000','Mode of payment':'UPI','Authorised Person':'yasothan','Receiver Person':'mani','RP Contact':'subash'},
    {'Voucher No': '2', 'Date': '20/12/23', 'Seller Details': '','Particulars/Description':'no','Amount':'2000','Mode of payment':'cash','Authorised person':'yasothan','Receiver person':'mani','RP Contact':'subash'},


  ];
}


class purchase_home_history extends StatefulWidget {
  @override
  _purchase_home_historyState createState() => _purchase_home_historyState();
}

class _purchase_home_historyState extends State<purchase_home_history> {
  late String _sortColumnName;
  late bool _sortAscending;
  List<String>? _filterTexts;
  bool _willSearch = true;
  Timer? _timer;
  int? _latestTick;
  List<String> _selectedRowKeys = [];
  int _rowsPerPage = 10;

  @override
  void initState() {
    super.initState();
    _sortColumnName = 'browser';
    _sortAscending = false;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (!_willSearch) {
        if (_latestTick != null && timer.tick > _latestTick!) {
          _willSearch = true;
        }
      }
      if (_willSearch) {
        _willSearch = false;
        _latestTick = null;
        setState(() {
          if (_filterTexts != null && _filterTexts!.isNotEmpty) {
            _filterTexts = _filterTexts;
            print('filterTexts = $_filterTexts');
          }
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
    _timer = null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('purchase history page'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: WebDataTable(
                      header: Text('purchase history'),
                      actions: [
                        if (_selectedRowKeys.isNotEmpty)
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: ElevatedButton(
                              // color: Colors.red,
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                print('Delete!');
                                setState(() {
                                  _selectedRowKeys.clear();
                                });
                              },
                            ),
                          ),
                        Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'increment search...',
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFCCCCCC),
                                ),
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFCCCCCC),
                                ),
                              ),
                            ),
                            onChanged: (text) {
                              _filterTexts = text.trim().split(' ');
                              _willSearch = false;
                              _latestTick = _timer?.tick;
                            },
                          ),
                        ),
                      ],
                      source: WebDataTableSource(
                        sortColumnName: _sortColumnName,
                        sortAscending: _sortAscending,
                        filterTexts: _filterTexts,
                        columns: [

                          // WebDataColumn(
                          //   name: 'id',
                          //   label: const Text('ID'),
                          //   dataCell: (value) => DataCell(Text('$value')),
                          // ),
                          // WebDataColumn(
                          //   name: 'id',
                          //   label: const Text('ID'),
                          //   dataCell: (value) => DataCell(Text('$value')),
                          // ),
                          // WebDataColumn(
                          //   name: 'id',
                          //   label: const Text('ID'),
                          //   dataCell: (value) => DataCell(Text('$value')),
                          // ),
                          WebDataColumn(
                            name: 'Voucher No',
                            label: const Text('Voucher No'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'Date',
                            label: const Text('Date'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'Seller Details',
                            label: const Text('Seller Details'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'Particulars/Description',
                            label: const Text('Particulars/Description'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'Amount',
                            label: const Text('Amount'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'Mode of Payment',
                            label: const Text('Mode of Payment'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'Authorised Person',
                            label: const Text('Authorised Person'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'Receiver Person',
                            label: const Text('Receiver Person'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'RP Contact',
                            label: const Text('RP Contact'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),

                        ],
                        rows: SampleData().data,
                        selectedRowKeys: _selectedRowKeys,
                        onTapRow: (rows, index) {
                          print('onTapRow(): index = $index, row = ${rows[index]}');
                        },
                        onSelectRows: (keys) {
                          print('onSelectRows(): count = ${keys.length} keys = $keys');
                          setState(() {
                            _selectedRowKeys = keys;
                          });
                        },
                        primaryKeyName: 'id',
                      ),
                      horizontalMargin: 100,
                      onPageChanged: (offset) {
                        print('onPageChanged(): offset = $offset');
                      },
                      onSort: (columnName, ascending) {
                        print(
                            'onSort(): columnName = $columnName, ascending = $ascending');
                        setState(() {
                          _sortColumnName = columnName;
                          _sortAscending = ascending;
                        });
                      },
                      onRowsPerPageChanged: (rowsPerPage) {
                        print('onRowsPerPageChanged(): rowsPerPage = $rowsPerPage');
                        setState(() {
                          if (rowsPerPage != null) {
                            _rowsPerPage = rowsPerPage;
                          }
                        });
                      },
                      rowsPerPage: _rowsPerPage,
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Print selected data


                    },
                    child: Text('Print '),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}