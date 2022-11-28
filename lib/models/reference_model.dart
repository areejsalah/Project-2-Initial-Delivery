class ReferenceModel {
  int? id;
  String? refrenceName;
  String? jobTitle;
  String? companyName;
  String? email;
  String? phone;

  ReferenceModel(
      {this.id,
      this.refrenceName,
      this.jobTitle,
      this.companyName,
      this.email,
      this.phone});
  Map<String, dynamic> toMap() {
    return {
      'refrenceName': refrenceName,
      'jobTitle': jobTitle,
      'companyName': companyName,
      'email': email,
      'phone': phone,
    };
  }

  factory ReferenceModel.fromMap(Map<String, dynamic> map) {
    return ReferenceModel(
      id: map['id'],
      refrenceName: map['refrenceName'],
      jobTitle: map['jobTitle'],
      companyName: map['companyName'],
      email: map['email'],
      phone: map['phone'],
    );
  }
}
