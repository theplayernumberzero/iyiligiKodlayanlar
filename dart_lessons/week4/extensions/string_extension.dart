extension StringExtension on String {
  String capitalizeFirstLetter() {
    //This myNAme i referans eder
    var first_letter = this[0];
    final other_letters = this.substring(1);
    first_letter = first_letter.toUpperCase();
    final finalLetter = first_letter + other_letters;
    return finalLetter;
  }
}
