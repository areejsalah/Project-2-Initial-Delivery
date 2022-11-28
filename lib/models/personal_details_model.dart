class PersonalDetailsModel {
  int? id;
  String? name;
  String? address;
  String? email;
  String? phone;
  String? dateOfBirth;
  String? website;
  String? linkedIn;
  String? image;
  PersonalDetailsModel(
      {this.id,
      this.name,
      this.address,
      this.email,
      this.phone,
      this.dateOfBirth,
      this.website,
      this.linkedIn,
      this.image});
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
      'email': email,
      'phone': phone,
      'dateOfBirth': dateOfBirth,
      'website': website,
      'linkedIn': linkedIn,
      'image': image,
    };
  }

  factory PersonalDetailsModel.fromMap(Map<String, dynamic> map) {
    return PersonalDetailsModel(
      id: map['id'],
      name: map['name'],
      address: map['address'],
      email: map['email'],
      phone: map['phone'],
      dateOfBirth: map['dateOfBirth'],
      website: map['website'],
      linkedIn: map['linkedIn'],
      image: map['image'],
    );
  }
}
