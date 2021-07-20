import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:reminderz/core/dashboard.dart';
import 'package:reminderz/core/size_config.dart';
import 'package:reminderz/core/style.dart';

class AppointMentScreen extends StatefulWidget {
  const AppointMentScreen();

  @override
  _AppointMentScreenState createState() => _AppointMentScreenState();
}

class _AppointMentScreenState extends State<AppointMentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dashboard(
        activeName: 'appointment',
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              Row(
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
                    width: SizeConfig.minBlockHorizontal * 2.0,
                  ),
                  Container(
                    width: 250,
                    child: DateTimeField(
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
                        hintText: 'Search by date',
                        contentPadding: EdgeInsets.only(
                          left: 15.0,
                          bottom: 2.0,
                          top: 2.0,
                          //right: 25.0,
                        ),
                        suffix: SvgPicture.asset('assets/svgs/clock.svg'),
                      ),
                      format: DateFormat("yyyy-MM-dd"),
                      onShowPicker: (context, currentValue) async {
                        final date = await showDatePicker(
                            useRootNavigator: false,
                            context: context,
                            firstDate: DateTime(1900),
                            initialDate: currentValue ?? DateTime.now(),
                            lastDate: DateTime(2100));
                        return date;
                      },
                    ),
                  ),
                ],
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
                        child: Checkbox(
                          value: false,
                          onChanged: (bool value) {},
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Select All'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Name'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Phone Number'),
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
                            child: Text('Appointment Date'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Clinic Type'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Doctor\'s Name'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Reminder Status'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Action'),
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
                          child: Checkbox(
                            value: false,
                            onChanged: (bool value) {},
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(''),
                          ),
                        ),
                      ),
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
                          child: Center(
                            child: Text('27-02-2021'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('ENT'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Fariddah Atiku'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 15.0,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: InkResponse(
                            onTap: () => Get.toNamed('/appointment/details'),
                            child: Icon(
                              Icons.cancel,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Checkbox(
                            value: false,
                            onChanged: (bool value) {},
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(''),
                          ),
                        ),
                      ),
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
                          child: Center(
                            child: Text('27-02-2021'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('ENT'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('Fariddah Atiku'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 15.0,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.cancel,
                            color: kPrimaryColor,
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
