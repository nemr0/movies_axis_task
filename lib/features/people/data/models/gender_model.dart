part of 'person_model.dart';
extension GenderModel on Gender{
  static Gender fromJson(int json){
    switch(json){
      case 0:
        return Gender.male;
      case 1:
        return Gender.female;
      default:
        return Gender.other;

    }
  }
}