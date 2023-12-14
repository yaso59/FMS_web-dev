import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web_data_table/web_data_table.dart';

class SampleData {
  List<Map<String, dynamic>> data = [
    {'date':'20/12/23','creditno':'123','companyname':'key tech','vehicleno':'TN 33RT 1234','typeofmaterial':'M-sand','quantity':'2T','price':'20000','amount':'2345','amountpaid':'2000','amountoutstanding':'345','duedate':'29/12/23'},
    {'date':'20/12/23','creditno':'123','companyname':'key tech','vehicleno':'TN 33RT 1234','typeofmaterial':'M-sand','quantity':'2T','price':'20000','amount':'2345','amountpaid':'2000','amountoutstanding':'345','duedate':'29/12/23'},



  ];
}


class credit_history extends StatefulWidget {
  @override
  _credit_historyState createState() => _credit_historyState();
}

class _credit_historyState extends State<credit_history> {
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
          title: const Text('Credit history page'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: WebDataTable(
                      header: Text('Credit history '),
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
                            name: 'date',
                            label: const Text('Date'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'creditno',
                            label: const Text('Credit No'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'companyname',
                            label: const Text('Company Name'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'vehicleno',
                            label: const Text('Vehicle No'),
                            dataCell: (value) => DataCell(Text('$value')),
                          ),
                          WebDataColumn(
                            name: 'typeofmaterial',
                            label: const Text('Type of Material'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'quantity',
                            label: const Text('Quantity'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'price',
                            label: const Text('Price'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'amount',
                            label: const Text('Amount'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'amountpaid',
                            label: const Text('Amount Paid'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'amountoutstanding',
                            label: const Text('Amount Outstanding'),
                            dataCell: (value) => DataCell(Text('$value')),
                            sortable: false,
                          ),
                          WebDataColumn(
                            name: 'duedate',
                            label: const Text('Due Date'),
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