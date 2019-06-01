import 'package:flutter/material.dart';
import 'package:flutter_app/enums/job-application-status.dart';
import 'package:flutter_app/models/job-application.dart';

import 'package:flutter_app/enums/job-application-source.dart';
import 'package:flutter_app/views/DetailScreenWPageView.dart';

class JobCardView extends StatefulWidget {
  JobCardView({Key key, this.source = JobApplicationSource.all})
      : super(key: key);

  final JobApplicationSource source;

  _JobCardViewState createState() => _JobCardViewState();
}

class _JobCardViewState extends State<JobCardView> {
  Color _statusColor = Colors.green;
  Color _sourceColor = Colors.blue;

  final List<JobApplication> _jobApplicationItems = [
    JobApplication("Software Engineer", "Sotej", 2,
        JobApplicationStatus.InProgress, JobApplicationSource.jobstreet),
    JobApplication("Flutter Developer", "Company XYZ Sdn. Bhd.", 5,
        JobApplicationStatus.Successful, JobApplicationSource.indeed),
    JobApplication(".NET Software Engineer", "Company ABC Pte. Ltd.", 0,
        JobApplicationStatus.Rejected, JobApplicationSource.jobstreet),
    JobApplication("UI/UX Programmer", "ZZZ Company LLC", 2,
        JobApplicationStatus.InProgress, JobApplicationSource.linkedin),
    JobApplication("Receptionist", "T-REX and Co.", 0,
        JobApplicationStatus.Rejected, JobApplicationSource.linkedin),
    JobApplication("Technical Staff", "Goggles Not Google LLC", 2,
        JobApplicationStatus.InProgress, JobApplicationSource.indeed),
    JobApplication(
        "Mobile Application Developer",
        "Yet Another Malaysian Company Sdn. Bhd.",
        5,
        JobApplicationStatus.Successful,
        JobApplicationSource.jobstreet),
    JobApplication("Professional Florist", "Of Flowers and Associates", 0,
        JobApplicationStatus.Rejected, JobApplicationSource.indeed)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        body: ListView.builder(
          itemCount: _jobApplicationItems.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreenWPageView()),
                    )
                  },
              child: Card(
                margin: EdgeInsets.all(3.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(3.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          '${_jobApplicationItems[index].applicationSource.toString().substring(_jobApplicationItems[index].applicationSource.toString().indexOf('.') + 1)}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                    ),
                    ListTile(
                      title: Text(
                        '${_jobApplicationItems[index].jobTitle}',
                        style: TextStyle(
                            fontSize: 21.0, fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                          '${_jobApplicationItems[index].companyName}',
                          style: TextStyle(fontSize: 14.0)),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                                '${_jobApplicationItems[index].stagesDone}/5 STAGES DONE')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '${_jobApplicationItems[index].jobApplicationStatus.toString().substring(_jobApplicationItems[index].jobApplicationStatus.toString().indexOf('.') + 1)}',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(24.0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Colors _getSourceColor(JobApplicationSource source) {

  // }

  // Colors _getStatusColor(JobApplicationStatus status) {
  //   if (status == JobApplicationStatus.InProgress) {
  //     return Colors.yellow
  //   }
  //   else if (status == JobApplicationStatus.Rejected) {

  //   }
  //   else if (status == JobApplicationStatus.Successful) {

  //   }
  // }
}
