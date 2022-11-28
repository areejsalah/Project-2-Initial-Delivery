class ObjectiveModel {
  int? id;
  String? objective;

  ObjectiveModel({this.id, this.objective});
  Map<String, dynamic> toMap() {
    return {
      'objective': objective,
    };
  }

  factory ObjectiveModel.fromMap(Map<String, dynamic> map) {
    return ObjectiveModel(
      id: map['id'],
      objective: map['objective'],
    );
  }
}
