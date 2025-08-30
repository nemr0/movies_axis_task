class Routes{
  static const String popularPeople = '/Get-Popular-People';
  static const String personPhoto = '/Photos/:photoId';
  static const String person = '/Person/:id';
  static String personPath(int id) => '/Person/$id';
  static String personPhotoPath(int id,int photoId) => '/Person/$id/Photos/$photoId';
}