import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var date, time;

  /*String getDate(){
    if(date== null ){
      return 'please select date';
    }
    else  return "${date.day}/${date.month}/${date.year}";
  }

  String getTime(){
    if(time== null ){
      return 'please select time';
    }
    else  return "${time.hour}:${time.minute}:${time.second}";
  }*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Clock')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              child: Text("choose your date & time",),
              onPressed: () async {

                //Date picker
                date = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2000),
                    firstDate: DateTime(1990),
                    lastDate: DateTime(2021));


                //Time picker
                time = await showTimePicker(context: context,
                  initialTime: TimeOfDay.now(),
                );
                print(time);


                //Snack Bar
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.white,),
                          SizedBox(width:10),
                          Text("${date.day}/${date.month}/${date.year}"),

                          SizedBox(width:20),

                          Icon(Icons.access_alarm_outlined, color: Colors.white,),
                          SizedBox(width:10),
                          Text("${time.hour}:${time.minute}"),
                        ],
                      ),
                      //TODO animation in snackbar
                      action: SnackBarAction(
                        onPressed: () {},
                        label: 'cancel',
                      ),
                    ));


              },
            ),

            /*  Container(
              child: Column(
                children: [
                  Text("${date.day}/${date.month}/${date.year}"),
                  Text("${time.hour}:${time.minute}"),
                ],
              ),
            ),*/


          ],
        ),
      ),
    );
  }
}
