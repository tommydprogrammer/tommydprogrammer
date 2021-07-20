import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:reminderz/core/dashboard.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/solid_button.dart';
import 'package:reminderz/core/style.dart';

class ClientScreen extends StatefulWidget {
  const ClientScreen();

  @override
  _ClientScreenState createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dashboard(
        activeName: 'client',
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                    ),
                    hintText: 'Search by..',
                    contentPadding: EdgeInsets.only(
                      left: 15.0,
                      bottom: 2.0,
                      top: 2.0,
                      //right: 25.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.minBlockVertical * 3.0,
              ),
              Table(
                border: TableBorder.all(
                  color: Colors.transparent,
                  style: BorderStyle.none,
                  width: 0,
                ),
                // defaultColumnWidth: IntrinsicColumnWidth(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Client Name'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Location'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Folder No.'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Actions'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: Color(0xffe8f0ff),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('John Doe'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('08130899561'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('435621'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: SolidButton(
                            text: 'Delete Client',
                            textColor: kWhiteColor,
                            onPressed: () {
                              // Dialogs.showLoginDialog();
                            },
                            width: 200.0,
                          ),
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: Color(0xffe8f0ff),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('John Doe'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('08130899561'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('435621'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: SolidButton(
                            text: 'Delete Client',
                            textColor: kWhiteColor,
                            onPressed: () {
                              // Dialogs.showLoginDialog();
                            },
                            width: 200.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.minBlockVertical * 3.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 12.0,
                      ),
                      Text('Reminder Sent')
                    ],
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 12.0,
                      ),
                      Text('Reminder Not Sent')
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
