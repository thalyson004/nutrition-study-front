class Recommendation {
  String name = "meal";
  double satisfaction = 0;

  Recommendation(this.name, this.satisfaction);

  @override
  String toString() {
    return "Name: $name, satisfaction: $satisfaction";
  }
}
