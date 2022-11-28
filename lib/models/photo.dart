class Photo {
  //int? id;
  String? photoName;
  Photo({required photoName});

  Map<String, dynamic> toMap() {
    return {
      'photoName': photoName,
    };
  }

  factory Photo.fromMap(Map<String, dynamic> map) {
    return Photo(
      photoName: map['photoName'],
    );
  }
}
