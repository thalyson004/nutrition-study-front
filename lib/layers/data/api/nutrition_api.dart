import '../dto/person_setting.dart';

class NutritionAPI {
  static Future<Map<String, String>> getNutrients() async {
    return {
      "ENERGIA_KCAL": "Energy (kcal)",
      "CHOTOT": "Carbohydrates (g)",
      "PTN": "Protein (g)",
      "LIP": "Total fats (g)",
      "FIBRA": "Total fiber (g)",
      "COLEST": "Cholesterol (mg)",
      "CALCIO": "Calcium (mg)",
      "AGTRANS": "Trans-fat (g)",
      "AGSAT": "Saturated fat (g)",
      "AGPOLI": "PUFA (g)",
      "SODIO": "Sodium (mg)",
      "POTASSIO": "Potassium (mg)",
      "FERRO": "Iron (mg)",
      "MAGNESIO": "Magnesium (mg)",
      "TIAMINA": "Vitamin B1 (mg)",
      "RIBOFLAVINA": "Vitamin B2 (mg)",
      "PIRIDOXAMINA": "Vitamin B6 (mg)",
      "NIACINA": "Niacin/B3 (mg)",
      "COBALAMINA": "Vitamin B12 (mcg)",
      "VITC": "Vitamin C (mg)",
      "VITA_RAE": "Vitamin A (µg)",
      "COBRE": "Copper (mg)",
      "FOLATO": "Folate (µg)",
      "FOSFORO": "Phosphorus (mg)",
      "ZINCO": "Zinc (mg)",
    };
  }

  static Future<Map<String, double>> getNutrientsQuantities(
      {Map<String, double>? meals}) async {
    return {
      "Energy (kcal)": 78,
      "Carbohydrates (g)": 97,
      "Protein (g)": 100,
      "Total fats (g)": 65,
      "Total fiber (g)": 78,
      "Cholesterol (mg)": 34,
      "Calcium (mg)": 67,
      "Trans-fat (g)": 33,
      "Saturated fat (g)": 21,
      "PUFA (g)": 235,
      "Sodium (mg)": 445,
      "Potassium (mg)": 23,
      "Iron (mg)": 46,
      "Magnesium (mg)": 44,
      "Vitamin B1 (mg)": 24,
      "Vitamin B2 (mg)": 56,
      "Vitamin B6 (mg)": 54,
      "Niacin/B3 (mg)": 34,
      "Vitamin B12 (mcg)": 23,
      "Vitamin C (mg)": 56,
      "Vitamin A (µg)": 74,
      "Copper (mg)": 32,
      "Folate (µg)": 75,
      "Phosphorus (mg)": 12,
      "Zinc (mg)": 64,
    };
  }

  static Future<Map<String, double>> getNutrientsRecommended(
      PersonSetting personSetting) async {
    return {
      "Energy (kcal)": 100,
      "Carbohydrates (g)": 100,
      "Protein (g)": 100,
      "Total fats (g)": 100,
      "Total fiber (g)": 100,
      "Cholesterol (mg)": 100,
      "Calcium (mg)": 100,
      "Trans-fat (g)": 100,
      "Saturated fat (g)": 100,
      "PUFA (g)": 100,
      "Sodium (mg)": 100,
      "Potassium (mg)": 100,
      "Iron (mg)": 100,
      "Magnesium (mg)": 100,
      "Vitamin B1 (mg)": 100,
      "Vitamin B2 (mg)": 100,
      "Vitamin B6 (mg)": 100,
      "Niacin/B3 (mg)": 100,
      "Vitamin B12 (mcg)": 100,
      "Vitamin C (mg)": 100,
      "Vitamin A (µg)": 100,
      "Copper (mg)": 100,
      "Folate (µg)": 100,
      "Phosphorus (mg)": 100,
      "Zinc (mg)": 100,
    };
  }
}
