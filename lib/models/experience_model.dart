class ExperienceModel {
  int? id;
  String? companyName;
  String? jobTitle;
  String? fromDate;
  String? toDate;
  String? detials;

  ExperienceModel({
    this.id,
    this.companyName,
    this.jobTitle,
    this.fromDate,
    this.toDate,
    this.detials,
  });
  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'jobTitle': jobTitle,
      'fromDate': fromDate,
      'toDate': toDate,
      'detials': detials,
    };
  }

  factory ExperienceModel.fromMap(Map<String, dynamic> map) {
    return ExperienceModel(
      id: map['id'],
      companyName: map['companyName'],
      jobTitle: map['jobTitle'],
      fromDate: map['fromDate'],
      toDate: map['toDate'],
      detials: map['details'],
    );
  }
}
