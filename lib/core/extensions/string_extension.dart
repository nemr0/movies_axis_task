extension StringExtension on String {
  String get capitalizeFirstLetter {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  String get fullImagePath {
    return 'https://image.tmdb.org/t/p/w500$this';
  }
}