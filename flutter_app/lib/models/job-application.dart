import 'package:flutter_app/enums/job-application-source.dart';
import 'package:flutter_app/enums/job-application-status.dart';

class JobApplication {
  final String jobTitle;
  final String companyName;
  final int stagesDone;
  final JobApplicationStatus jobApplicationStatus;
  final JobApplicationSource applicationSource;

  JobApplication(this.jobTitle, this.companyName, this.stagesDone,
      this.jobApplicationStatus, this.applicationSource);
}
