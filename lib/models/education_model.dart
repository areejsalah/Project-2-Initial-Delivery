class EducationModel {
  int? id;
  String? degree;
  String? university;
  String? grade;
  String? year;

  EducationModel(
      {this.id, this.degree, this.university, this.grade, this.year});
  Map<String, dynamic> toMap() {
    return {
      'degree': degree,
      'university': university,
      'grade': grade,
      'year': year
    };
  }

  factory EducationModel.fromMap(Map<String, dynamic> map) {
    return EducationModel(
        id: map['id']?.toInt(),
        degree: map['degree'],
        university: map['university'],
        grade: map['grade'],
        year: map['year']);
  }
}
