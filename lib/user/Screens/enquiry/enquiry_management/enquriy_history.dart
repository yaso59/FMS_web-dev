import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web_data_table/web_data_table.dart';

class SampleData {
  List<Map<String, dynamic>> data = [
    {'contractnumber':'1123','enquirydate':'20/12/23','materialtype':'M-sand','quantity':'1T','minelocation':'erode','status':'pending','shipmentdate':'23/12/23','ticketnumber':'12'},
    {'contractnumber':'1123','enquirydate':'20/12/23','materialtype':'M-sand','quantity':'1T','minelocation':'erode','status':'pending','shipmentdate':'23/12/23','ticketnumber':'12'}


  ];
}


class enquriy_history extends StatefulWidget {
  @override
  _enquriy_historyState createState() => _enquriy_historyState();
}

class _enquriy_historyState extends State<enquriy_history> {
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
          title: const Text('Enquriy history page'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: WebDataTable(
                      header: Text('Enquriy history '),
                      actions: [
                        if (_selectedRowKeys.isNotEmpty)
                          SizedBox(
                            height: 50,
                            width: 100,
                            // child: ElevatedButton(
                            //   // color: Colors.red,
                            //   child: Text(
                            //     'Delete',
                            //     style: TextStyle(
                            //       color: Colors.white,
                            //     ),
                            //   ),
                            //   onPressed: () {
                            //     print('Delete!');
                            //     setState(() {
                            //       _selectedRowKeys.clear();
                            //     });
                            //   },
                            // ),
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
                            name: 'contractnumber',
                            label: const Text('Contract Number'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'enquirydate',
                            label: const Text('Enquiry_date'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'materialtype',
                            label: const Text('Material type'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'quantity',
                            label: const Text('quantity'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'minelocation',
                            label: const Text('Mine location'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'status',
                            label: const Text('status'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'shipmentdate',
                            label: const Text('Shipment date'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'ticketnumber',
                            label: const Text('Ticket number'),
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