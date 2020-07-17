import 'package:flutter/material.dart';
import 'package:tasking/addtask_page.dart';
import 'package:tasking/constants.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text('PROJECT NAME',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ProjectP(),
    );
  }
}

class ProjectP extends StatefulWidget {
  @override
  _ProjectPState createState() => _ProjectPState();
}

class _ProjectPState extends State<ProjectP> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0, top: 40, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Project Head:    Ajay Vaidhyanathan', // add $variable instead of name
            style: kHeadingTextStyle,
          ),
          SizedBox(height: 20),
          Text('Total Members:   4',
          style: kHeadingTextStyle,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Balaji Muralithran',
                style: kHeadingTextStyle,
                ),
                SizedBox(height: 10),
                Text('Task: Complete Web UI',
                style: kHeadingTextStyle,
                ),
                SizedBox(height: 10),
                Text('Assigned to: Ajay Vaidhyanathan',
                style: kHeadingTextStyle,
                ),
                SizedBox(height: 10),
                Text('Due Date: 14 July,2020',
                style: kHeadingTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Task: Complete App Features',
                  style: kHeadingTextStyle,
                ),
                SizedBox(height: 10),
                Text('Assigned to: Balaji Muralitharan',
                  style: kHeadingTextStyle,
                ),
                SizedBox(height: 10),
                Text('Due Date: 14 July,2020',
                  style: kHeadingTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(top:80, left: 320 ),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTask()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
