
class PersonalDetailsModel{
  String? name;
  String? address;
  String? email;
  String? phone;
  String? dateOfBirth;
  String? website;
  String? linkedIn;

  'Name'),
            CustomTextField('Address (Optional)'),
            CustomTextField('Email'),
            CustomTextField('Phone'),
            CustomTextField('Date Of Birth (Optional)'),
            CustomTextField('Website (Optional)'),
            CustomTextField('LinkedIn (Optional)'), 
}