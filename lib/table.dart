import 'package:flutter/material.dart';

class UDataColumn extends StatelessWidget {
  final String field;
  final Widget? label;
  const UDataColumn({super.key, required this.field, this.label});

  @override
  Widget build(BuildContext context) {
    if (label == null) {
      return Text(
        field,
      );
    }
    return label!;
  }
}

class UDataRow {
  static int gIndex = 0;
  int index = 0;
  Map<String, dynamic> rowMap;
  UDataRow({
    required this.rowMap,
  }) {
    gIndex++;
    index = gIndex;
  }

  fieldName(String keyName) => rowMap[keyName];
}

class UTable extends StatefulWidget {
  final List<UDataColumn> cols;
  final List<UDataRow> rows;
  final List<UDataRow> rowsFixed;
  final List<UDataRow> rowsHeader;
  final List<UDataRow> rowsFooter;
  final bool isResponsive;
  final int fixedColumns;

  const UTable({
    Key? key,
    required this.cols,
    required this.rows,
    this.isResponsive = true,
    this.rowsFixed = const [],
    this.rowsHeader = const [],
    this.rowsFooter = const [],
    this.fixedColumns = 0,
  }) : super(key: key);

  @override
  State<UTable> createState() => _UTableState();
}

enum TableLengthCheck { good, bad }

class Row1ScrollController extends ScrollController {
  Row1ScrollController();
}

class Row2ScrollController extends ScrollController {
  Row2ScrollController();
}

class Column1ScrollController extends ScrollController {
  Column1ScrollController();
}

class Column2ScrollController extends ScrollController {
  Column2ScrollController();
}

class _UTableState extends State<UTable> {
  bool isLoading = true;
  TableLengthCheck checkLength = TableLengthCheck.good;
  final ScrollController controllerR1 = Row1ScrollController();
  final ScrollController controllerR2 = Row2ScrollController();
  final ScrollController controllerC1 = Column1ScrollController();
  final ScrollController controllerC2 = Column2ScrollController();

  List<UDataColumn> columns = [];
  List<UDataColumn> fcolumns = [];

  List<UDataRow> rowList = [];
  List<UDataRow> tRowList = [];
  List<List<Widget>> rowFixedDataList = [];

  bool isFixedColumn = true;

  @override
  void initState() {
    super.initState();

    rowList = widget.rows;
    // synchronizeR1WR2();
    if (widget.fixedColumns > 0) {
      columns = widget.cols;
      fcolumns = widget.cols.getRange(0, widget.fixedColumns).toList();
      columns.removeRange(0, widget.fixedColumns);
    } else {
      columns = widget.cols;
    }
    checkIfRowDataMatch();
  }

  void checkIfRowDataMatch() {
    checkLength = TableLengthCheck.good;
    for (int j = 0; j < widget.rows.length; j++) {
      for (int i = 0; i < widget.cols.length; i++) {
        if (!widget.rows[j].rowMap.containsKey(widget.cols[i].field)) {
          checkLength = TableLengthCheck.bad;
          break;
        }
      }
    }

    setState(() {
      isLoading = false;
    });
  }

  List<List<Widget>> getRowData({required List<UDataColumn> cols, required List<UDataRow> rows}) {
    List<List<Widget>> list = [];
    for (int j = 0; j < rows.length; j++) {
      List<Widget> singleRowData = [];
      for (int i = 0; i < cols.length; i++) {
        Widget data = Text((rows[j].rowMap[cols[i].field].toString()));
        singleRowData.add(data);
      }
      list.add(singleRowData);
    }
    return list;
  }

  Widget rootWidgetInit({required Widget child}) {
    if (widget.isResponsive && widget.fixedColumns == 0) {
      return child;
    }
    if (widget.fixedColumns > 0) {
      return Row(
        children: [
          buildTable(
            tableCols: fcolumns,
            controller: controllerR2,
            isFixedColumn: true,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: child,
            ),
          ),
        ],
      );
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: child,
    );
  }

  Widget cellConstraint({required Widget child}) {
    if (widget.isResponsive && widget.fixedColumns == 0) {
      return ExpandedConstraint(child: child);
    }
    if (widget.fixedColumns > 0) {
      return FixedConstraint(
        child: child,
      );
    }
    return FixedConstraint(
      child: child,
    );
  }

  // void searchAndFilter(String query) {
  //   populateList.clear();
  //   populateList.addAll(projectList);
  //   List<Project> dummySearchList = [];
  //   dummySearchList.addAll(populateList);

  //   if (query.isNotEmpty) {
  //     List<Project> dummyListData = [];
  //     dummySearchList.forEach((item) {
  //       if (item.projectName.toLowerCase().contains(query.toLowerCase()) || item.projectCode.toLowerCase().contains(query.toLowerCase())) {
  //         if (!dummyListData.contains(item)) dummyListData.add(item);
  //       }
  //     });
  //     setState(() {
  //       populateList.clear();
  //       populateList.addAll(dummyListData);
  //     });
  //   } else {
  //     setState(() {
  //       populateList.clear();
  //       populateList.addAll(projectList);
  //     });
  //   }
  // }

  searchable(String term) {
    rowList.clear();
    rowList.addAll(widget.rows);
    if (term.isNotEmpty) {
      List<UDataRow> tempRowsData = [];
      for (var element in widget.rows) {
        element.rowMap.forEach((key, value) {
          if (value.toString().toLowerCase().contains(term.toLowerCase())) {
            tempRowsData.add(element);
          }
        });
      }
      setState(() {
        rowList.clear();
        rowList.addAll(tempRowsData);
      });
    } else {
      setState(() {
        rowList.clear();
        rowList.addAll(widget.rows);
      });
    }
  }

  Widget buildTable({required List<UDataColumn> tableCols, ScrollController? controller, isFixedColumn = false}) {
    return Container(
      color: Colors.black54,
      child: Column(
        children: [
          Column(children: [
            Row(children: tableCols.map((e) => cellConstraint(child: e)).toList()),
            ...getRowData(rows: widget.rowsFixed, cols: tableCols)
                .map(
                  (row) => Row(
                    children: row.map((cell) => cellConstraint(child: cell)).toList(),
                  ),
                )
                .toList(),
          ]),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (controller is Row1ScrollController) {
                  controllerR2.jumpTo(controller.offset);
                }
                return false;
              },
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                controller: controller,
                child: Column(
                  children: [
                    if (widget.rowsHeader.isNotEmpty)
                      ...getRowData(rows: widget.rowsHeader, cols: tableCols)
                          .map(
                            (row) => Row(
                              children: row.map((cell) => cellConstraint(child: cell)).toList(),
                            ),
                          )
                          .toList(),
                    ...getRowData(rows: rowList, cols: tableCols)
                        .map(
                          (row) => Row(
                            children: row.map((cell) => cellConstraint(child: cell)).toList(),
                          ),
                        )
                        .toList(),
                    if (widget.rowsFooter.isNotEmpty)
                      ...getRowData(rows: widget.rowsFooter, cols: tableCols)
                          .map(
                            (row) => Row(
                              children: row.map((cell) => cellConstraint(child: cell)).toList(),
                            ),
                          )
                          .toList(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      if (checkLength == TableLengthCheck.bad) {
        return const Text("error");
      }
      return Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 200,
                child: TextFormField(
                  onChanged: (value) {
                    searchable(value);
                  },
                ),
              )
            ],
          ),
          const SizedBox(
            height: 42,
          ),
          Expanded(
            child: rootWidgetInit(
              child: buildTable(tableCols: columns, controller: controllerR1),
            ),
          ),
        ],
      );
    }
  }
}

class FixedConstraint extends StatelessWidget {
  final double? height;
  final double width;
  final Widget child;
  const FixedConstraint({
    Key? key,
    this.height = 100,
    this.width = 120,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: width, height: height),
        child: Card(
          borderOnForeground: false,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
          child: Container(
            padding: const EdgeInsets.all(6.0),
            alignment: Alignment.topLeft,
            child: child,
          ),
        ));
  }
}

class ExpandedConstraint extends StatelessWidget {
  final Widget child;
  const ExpandedConstraint({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(6.0),
      child: child,
    ));
  }
}
