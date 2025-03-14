class Meal {
  String name = "meal";
  int time = 0;
  int grams = 0;

  Meal(this.name, this.time, this.grams);

  @override
  String toString() {
    return "Name: $name, time: $time, grams $grams";
  }
}
