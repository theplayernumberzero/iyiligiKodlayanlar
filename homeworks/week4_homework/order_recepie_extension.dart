import 'foods_enum.dart';

extension OrderRecipe on Foods {
  String getRecipe() {
    switch (this) {
      case Foods.Pizza:
        return "Hamur, peynir, domates sosu ve seçilen malzemeler";
      case Foods.Hamburger:
        return "Et köftesi, hamburger ekmeği, marul ve soslar";
      case Foods.Hotdog:
        return "Sosis, sandiviç ekmeği ve soslar";
      case Foods.Lahmacun:
        return "Hamur, kıyma, soğan ile bir lezzet harikası.";
    }
  }
}
