class SkillModel {
  int? id;
  String? title;

  SkillModel({this.id, required this.title});
  Map<String, dynamic> toMap() {
    return {
      'title': title,
    };
  }

  factory SkillModel.fromMap(Map<String, dynamic> map) {
    return SkillModel(
      id: map['id'],
      title: map['title'],
    );
  }
}
