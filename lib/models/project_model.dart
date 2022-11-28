class ProjectModel {
  int? id;
  String? projectDetials;
  ProjectModel({this.id, this.projectDetials});

  Map<String, dynamic> toMap() {
    return {
      'projectDetials': projectDetials,
    };
  }

  factory ProjectModel.fromMap(Map<String, dynamic> map) {
    return ProjectModel(
      id: map['id'],
      projectDetials: map['projectDetials'],
    );
  }
}
